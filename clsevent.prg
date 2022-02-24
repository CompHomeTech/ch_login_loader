*
*  CLSEVENT - implements a Win32 Event object, allowing you to use event synchronization of multiple 
*             processes/threads on a single system.  The base class implements creation, acquisition
*             and release of a named Event object.
*
*  Public methods:
*
*  SetEvent(nTimeToWait) -           signal the event if possible, releasing other threads waiting on the event to proceed.
*                                    parameter specifies time to wait in ms for acquiring control to signal;  no value or -1
*                                    will wait forever.  If no other thread is waiting on the event, event remains signalled.
*                                    Returns .T. if succeeds in signalling the event, and .F. if fails
*  PulseEvent(nTimeToWait) -         signal the event if possible, and release exactly one waiting thread to execute.  Releasing
*                                    a thread will immediately unsignal the event.  Used to serialize pending access to an event
*                                    and if no thread is waiting on signal, the event immediately will Reset and control of the
*                                    event signal state reverts to the pulsing thread.  nTimeToWait behaves as per SetEvent.
*                                    Returns .T. if succeeds in pulsing the event, and .F. if it cannot signal the state once.
*  ResetEvent(nTimeToWait) -         unsignal the event, blocking any other thread which waits on the event object.  nTimeToWait
*                                    behaves as per SetEvent.  Returns .T. if event is unsignalled, and .F. if this process cannot
*                                    unsignal the event because someone else beat us to it.
*  WaitUntilSignalled(nTimeToWait) - Waits for specified time or until event is signalled by another process.  Specifying 0
*                                    for nTimeToWait checks the signalled state without spinning on signal acquisition.  You
*                                    need to know if the event is being handled via PulseEvent, because success will immediately
*                                    unsignal the event for others;  you should SetEvent() on WaitUntilSignalled() if other processed
*                                    should also be permitted to proceed.  Returns .T. if signalled within time, and .F. if timeout
*                                    occurs.  DOEVENTS() is called every 1/2 second in wait so that VFP does not stop responding 
*                                    to Windows messsages as would happen if the static waitforever mode is used
*  GetEventName -                    Returns the string corresponding to the Event Object
*  GetEventHandle -                  Returns the event handle assigned by Windows;  needed for use by calls to WaitMultipleObject or
*                                    MsgWaitMultipleObject functions
*  GetAPIErrorNumber -               Returns the value of the last call to GetLastError() following invoking an event-related API call
*  OwnsEvent -                       Indicates if this instance of the event last changed the state to unsignalled, or if the instance
*                                    inherited the unsignalled state because the last thread Resetting the event has closed its event
*                                    handle without signalling the event again
*  GetClassError -                   Used during debugging to track errors;  does nothing in current configuration
*
*  There are no public properties.
*
*  Because this class operates by passing parameters during the CREATEOBJ() call, it is not suitable for implementation as an
*  OLEPUBLIC class.  If it is implemented as an OLEPUBLIC class, be certain to instance it as an in-process server;  it is
*  thread-specific, and should not run outside the thread context calling it.
*
DEFINE CLASS cusEvent AS LINE
	PROTECTED cEventName, nEventHandle, lEventResetByMe, nAPIErrorCode, lManualReset, cErrorMessage
	lEventResetByMe = .F.
	nEventHandle = NULL
	cEventName = NULL
	nAPIErrorCode = 0
	lManualReset = .T.
	cErrorMessage = ''

PROCEDURE GetEventName
   *  Display name of event managed by object
   RETURN this.cEventName
ENDPROC

PROCEDURE GetEventHandle
   *  Object handle - expose for use with WaitMultipleObject, MsgWaitMultipleObject and other calls
   RETURN this.nEventHandle
ENDPROC

PROCEDURE GetAPIErrorNumber
   *  Last class-received API error code
   RETURN this.nAPIErrorCode
ENDPROC

PROCEDURE OwnsEvent
   *  Whether I was the turkey who last reset the event status
   RETURN this.lEventResetByMe
ENDPROC 

PROCEDURE GetClassError
   *  And the random error message - not presently used
   RETURN this.cErrorMessage
ENDPROC

PROCEDURE INIT
   LPARAMETERS cEventName, lInitIfExists, lAutoResetEvent
   LOCAL cNamePrefix
   DECLARE INTEGER GetLastError IN WIN32API
   WITH this
      DO CASE
      CASE TYPE('cEventName') # 'C' OR LEN(cEventName) = 0

         * No name specified - form name from the main program + _EVENT

         cEventName = SYS(16,0) + '_EVENT'
      
      CASE cEventName == '.'
         
         *  User requested program name less path + '_EVENT'
         
         cEventName = FULLPATH(SYS(16,0))
         cEventName = SUBST(cEventName, RAT('\',cEventName) + 1) + '_EVENT'
         
      CASE cEventName = '-'
       
         *  User wants the PROGRAM(0) name + '_EVENT'
         cEventName = PROGRAM(0) + '_EVENT'
      
      ENDCASE
      
      *  Allow the occurance of the three event scope values.  Other than these specific instances,
      *  backslashes can't appear in an event name.  The scopes are really only applicable under Win2K
      *  TS, other OS versions will ignore the scope specifier.
      
      *  Split off the scope prefix from the event name if present before transforming the event name 
      *  string to allow for barred characters.
      
      cNamePrefix = ''
      DO CASE
      CASE LEN(cEventName) > 7 AND LEFT(cEventName,7) == 'Global\'
         cNamePrefix = 'Global\'
         cEventName = SUBST(cEventName,8)
      CASE LEN(cEventName) > 6 AND LEFT(cEventName,6) == 'Local\'
         cNamePrefix = 'Local\'
         cEventName = SUBST(cEventName,7)
      CASE LEN(cEventName) > 8 AND LEFT(cEventName,8) = 'Session\'
         cNamePrefix = 'Session\'
         cEventName = SUBST(cEventName,9)
      ENDCASE

      *  Other than the 3 scope prefixes, no backslash allowed, and change space to _
      
      .cEventName = cNamePrefix + CHRTRAN(cEventName, '\ ','/_')

      *  What do we do if an error occurs, with the net result that the object doesn't get instanced?  There's
      *  no way to tell VFP why.  So, we cheat - create a custom property of the _SCREEN object that can hold
      *  an error message.  If the object doesn't instance, the program can check the custom property to
      *  retrieve the reason that the instance failed to occur.  We provide for two failure types - the
      *  Event is being used to enforce 'single instance' behavior, and the event already exists, or the API
      *  call creating the event failed.  The most common failure reason, invalid characters in the event name
      *  we've handled above;  if we do fail, the API error code will be in the custom property

      IF TYPE('_SCREEN.cusEvent_Error') = 'U'
         _SCREEN.AddProperty('cusEvent_Error','')
      ELSE
         _SCREEN.cusEvent_Error = ''
      ENDIF
      .nEventHandle = .APICreateEvent(! lAutoResetEvent)
      DO CASE
      CASE .nEventHandle = 0
         * Event was not created
         _SCREEN.cusEvent_Error = 'Event "' + .cEventName + '" failed to create ' + ;
                                  'Error #' + TRANSFORM(.nAPIErrorCode)
         RETURN .F.
      CASE .nAPIErrorCode = 183 AND ! lInitIfExists
         *  Now we see why the ReleaseEvent() method is used - we want to perform the Release action,
         *  but we're never instancing the object.  So we make a custom method that does the API
         *  release but doesn't rely on the Object's Release method ever firing.
         .ReleaseEvent()
         _SCREEN.cusEvent_Error  = 'Event "' + .cEventName + '" already exists'
         RETURN .F.
      ENDCASE

      .lManualReset = ! lAutoResetEvent

   ENDWITH
   RETURN .T.
ENDPROC

PROCEDURE Release
   *  Call the API object release mechanism, then proceed with the normal Release behavior
   .ReleaseEvent()
   =DODEFAULT()
ENDPROC         

PROTECTED PROCEDURE APICreateEvent
   *  Attempt to create the Windows Event.  Could be done in-line in init;  decided to break it out
   *  to make code more readable, and to simplify life if we ever need to do a COM object and disallow
   *  passing parameters to the Init.  If that happens, we'll change the Init to a public callable
   *  CreateEvent method instead.
   
   LPARAMETER lManualReset
   LOCAL nEventHandle
   DECLARE INTEGER CreateEvent IN WIN32API ;
      INTEGER    lpSA, ;
      SHORT      bManualReset, ;
      SHORT      bInitialState, ;
      STRING     @ lpszEventName
   WITH this
   
      *  Create event in unsignalled state
      
      nEventHandle = CreateEvent(0, IIF(lManualReset,1,0), 0, .cEventName)
      .nAPIErrorCode = GetLastError()
      .lEventResetByMe = nEventHandle # 0 AND .nAPIErrorCode = 0
   ENDWITH
   RETURN nEventHandle
ENDPROC

PROTECTED PROCEDURE ReleaseEvent
   *  Set up a separate Release that's usable from Init if we don't intend to instance
   *  the Event object even though we created it.  Funky things happening if we invoke 
   *  Release without having returned from Init
   WITH this
      IF .lEventResetByMe
         *  If I own the event block, release it explicitly
         .SetEvent(-1)
      ENDIF
      DECLARE CloseHandle IN WIN32API INTEGER nHandle
      =CloseHandle(.nEventHandle)
      .nEventHandle = NULL
      .cEventName = NULL
   ENDWITH
   RETURN .T.
ENDPROC

PROCEDURE WaitUntilSignalled
   *  Use WaitOnSingleObject to detect if Event was signalled by someone.  Rather than using
   *  INFINITE_TIME to spin indefinitely, set timeout to half-second intervals and explicitly
   *  call a DOEVENTS() to ensure other VFP stuff responds to UI/WinMessages
   
   LPARAMETERS nWaitForTime
   LOCAL nWaitResult, nDuration, lTestSignalledState
   DECLARE INTEGER WaitForSingleObject IN kernel32.DLL ;
      INTEGER nHandle, ;
      INTEGER dwMilliSeconds
   #DEFINE WAIT_TIMEOUT 0x102
   #DEFINE WAIT_ABANDONED 0x80
   #DEFINE WAIT_OBJECT_0 0x0
   #DEFINE INFINITE_TIME -1
   IF VARTYPE(nWaitForTime) # 'N'
      nWaitForTime = INFINITE_TIME
   ENDIF
   WITH this
      .nAPIErrorCode = 0
      lTestSignalledState = ! .lEventResetByMe
      nWaitResult = WAIT_OBJECT_0
      DO WHILE lTestSignalledState
         *  Set up countdown timing;  decrement delay time by upto 1/2 second per iteration
         IF nWaitForTime >= 0
            nDuration = MIN(500, nWaitForTime)
            nWaitForTime = nWaitForTime - nDuration
         ELSE
            *  Negative time, so we wait forever by always waiting 1/2 second
            nDuration = 500
         ENDIF
         lTestSignalledState = .F.
         nWaitResult = WaitForSingleObject(.nEventHandle, ;
                                            nDuration )
         .nAPIErrorCode = GetLastError()
         DO CASE
         CASE nWaitResult = WAIT_OBJECT_0
            *  Event signalled
            .lEventResetByMe = ! .lManualReset
         CASE nWaitResult = WAIT_ABANDONED
            *  Event reset by another process which subsequently released the handle
            *  Windows awards the reset to the first event monitor to test signalled state
            *  following close
            .lEventResetByMe = .T.
         CASE nWaitResult = WAIT_TIMEOUT
            *  Timeout waiting on signalled state
            .lEventResetByMe = .F.
            lTestSignalledState = (nWaitForTime = 0)
         OTHERWISE
            *  Error occurred
            .lEventResetByMe = .F.
            lTestSignalledState = (.nAPIErrorCode = 0)
         ENDCASE
         *DOEVENTS()
      ENDDO
   ENDWITH
   RETURN INLIST(nWaitResult,WAIT_OBJECT_0,WAIT_ABANDONED)
ENDPROC

PROCEDURE SetEvent
   *  Signal event, do not restrict dispatch of waiting threads
   LPARAMETER nWaitForTime
   DECLARE SHORT SetEvent IN WIN32API INTEGER nEventHandle
   LOCAL lEventSet
   WITH this
      .nAPIErrorCode = 0
      IF .lEventResetByMe
         lEventSet = SetEvent(.nEventHandle) # 0
         .nAPIErrorCode = GetLastError()
      ELSE
         IF .WaitUntilSignalled(nWaitForTime)
            lEventSet = SetEvent(.nEventHandle) # 0
            .nAPIErrorCode = GetLastError()
         ELSE
            lEventSet = .F.
         ENDIF
      ENDIF
      .lEventResetByMe = .F.
   ENDWITH
   RETURN lEventSet
ENDPROC

PROCEDURE PulseEvent
   *  Signal event, restrict dispatch of waiting threads to allow first of n to proceed
   *  If nothing waiting or dispatchable, reset signalled state
   LPARAMETER nWaitForTime
   DECLARE SHORT PulseEvent IN WIN32API INTEGER nEventHandle
   LOCAL lEventSet
   WITH this
      .nAPIErrorCode = 0
      IF .lEventResetByMe
         lEventSet = PulseEvent(.nEventHandle) # 0
         .nAPIErrorCode = GetLastError()
      ELSE
         IF .WaitUntilSignalled(nWaitForTime)
            lEventSet = PulseEvent(.nEventHandle) # 0
            .nAPIErrorCode = GetLastError()
         ELSE
            lEventSet = .F.
         ENDIF
      ENDIF
      .lEventResetByMe = .F.
   ENDWITH
   RETURN lEventSet
ENDPROC

******************************************************************************************
PROCEDURE ResetEvent
   *  Set Event unsignalled
   LPARAMETER nWaitForTime
   DECLARE SHORT ResetEvent IN WIN32API INTEGER nEventHandle
   LOCAL lEventReset
   lEventReset = .F.
   WITH this
      IF .lEventResetByMe
         lEventReset = ResetEvent(.nEventHandle) # 0
         .nAPIErrorCode = GetLastError()
      ELSE
         IF .WaitUntilSignalled(nWaitForTime)
            IF .lManualReset
               lEventReset = ResetEvent(.nEventHandle) # 0
               .nAPIErrorCode = GetLastError()
            ELSE
               lEventReset = .T.
            ENDIF
         ELSE
            lEventReset = .F.
         ENDIF
      ENDIF
   ENDWITH
   RETURN lEventReset
ENDPROC
ENDDEFINE

******************************************************************************************


******************************************************************************************
PROCEDURE sendcopy
******************************************************************************************
PARAMETERS fromm, mailto, contact, ccopy, subj, attchm, messg, html_m


** sends the email

set procedure to ".\vfpWinsock"
local loSendMail
loSendMail=CREATEOBJECT("VFP_Winsock_Send_Mail")
loSendMail.SMTP_Host = "mail.elderly-care.com"
loSendMail.FROM = m.fromm
loSendMail.FROM_NAME = "Companions & Homemakers"
loSendMail.AUTH_LOGIN = ""
loSendMail.AUTH_PASSWORD = ""
loSendMail.TO = m.mailto
IF !EMPTY(m.ccopy) 
	loSendMail.CC = m.ccopy
endif	
loSendMail.TO_NAME = m.contact
loSendMail.Subject = m.subj
loSendMail.MESSAGE = m.messg
loSendMail.MessageHTML = m.html_m
IF !EMPTY(m.attchm) 
	loSendMail.ATTACHMENT = m.attchm
endif	

if not loSendMail.send() 
*  =MESSAGEBOX(loSendMail.erreur,16,"Error") 
endif
loSendMail=.null.

SET PROCEDURE TO clsevent
RETURN
**************************************************************************


**************************************************************************
FUNCTION GetNetworkUser
**************************************************************************
*---returns current network/machine user
LOCAL Passback, lcUser
PassBack=""
lcUser = Lower(Substr(Sys(0),Atc('#',Sys(0),1) + 2))

IF ALLTRIM(lcUser)=="0" OR ALLTRIM(lcUser)=="1"
	PassBack=""
ELSE
	PassBack=lcUser
ENDIF
RETURN PassBack
**************************************************************************

*************************************************************************
FUNCTION ReduceMemory()
*************************************************************************
* the ole control has a memory leak.  This function is to clean it up.

DECLARE Integer SetProcessWorkingSetSize IN Kernel32 AS SetProcessWorkingSetSize ;
		Integer hProcess ,;
		Integer dwMinimimumWorkingSetSize,;
		Integer dwMaximumWorkingSetSize
		
DECLARE Integer GetCurrentProcess IN kernel32 AS GetCurrentProcess
nProc = GetCurrentProcess()
bb = SetProcessWorkingSetSize(nProc,-1,-1)
RETURN


*************************************************************************
FUNCTION CheckOpen
PARAMETERS pWindowTitle, pDoClose
*************************************************************************
* Checks if an application is already open
* if doclose is .T., the window will be closed

LOCAL PassBack
PassBack = .F.

#DEFINE WM_CLOSE 0x10
DECLARE Long FindWindow IN  WIN32API String ClassName, String WindowTitle
DECLARE Long SendMessage IN WIN32API Long hWnd, Long Msg, Long wParam, Long lParam

lcWindowTitle = pWindowTitle

hWnd = FindWindow(Null, lcWindowTitle)
IF hWnd # 0
	PassBack = .T.
ENDIF

IF PassBack AND pDoClose
	* close the open application
	= SendMessage( hWnd, WM_CLOSE, 0, 0 )
ENDIF
RETURN PassBack
*************************************************************************
