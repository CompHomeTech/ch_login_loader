**************************************************************************
* HOPE ErrorHandler
* By Jonathan Singer and Mike Harris-Stone
* 12/5/2011
*
* Modified by MHS on 1/3/2011 to add call stack tracking
**************************************************************************
PARAMETERS pError,pMessage,pMessage1,pProgram,pLineNo,pDepth

LOCAL n, msg

IF pError=1426 && OLE Error from user prematurely terminating process
	RETURN
ENDIF


ON ERROR && turn error trapping off to prevent recursion

m.msg = ""

*--build a list of the Call Stack to include in the email
FOR n = pDepth - 1 TO 1 STEP - 1 
	msg = m.msg + "<br />" + 'Program(' + LTRIM(STR(m.n))+ '): '+PROGRAM(m.n)
ENDFOR


hmsg = "<HTML> <BODY> A HOPE Error has been recorded<br /><br />"+;
"Error Number:  "+ALLTRIM(STR(pError))+"<br />"+;
"Error Message: "+ALLTRIM(pMessage)+"<br />"+;
"Program Code:  "+ALLTRIM(pMessage1)+"<br />"+;
"Procedure:  "+ALLTRIM(pProgram)+"<br />"+;
"Line #: "+ALLTRIM(STR(pLineNo))+"<br />"+"<br />"+;
"Call Stack:  "+ALLTRIM(m.msg)+"<br />"+"<br />"+;
"When:  "+TTOC(DATETIME())+"<br />"+;
"Where: "+SYS(0)+"<br />"+"</BODY></HTML>"

*hmsg = "<HTML> <BODY> A HOPE System Error has been recorded </BODY></HTML>"

DO sendcopy WITH "HOPE@elderly-care.com","HOPEerrors@elderly-care.com","HOPE Error Notification","","HOPE Error Notification","","",m.hmsg

*DO sendcopy WITH "Michael.Harris-Stone@elderly-care.com","Michael.Harris-Stone@elderly-care.com","HOPE Error Notification","","HOPE Error Notification","","",m.hmsg

=MESSAGEBOX("A HOPE Error has occured which required the program to shut down."+CHR(13)+CHR(13)+"A notification has already been sent to Tech Support",16,"HOPE Error",5000)

CLOSE DATABASES ALL

TRY
	RELEASE ALL
CATCH
ENDTRY

TRY
	CLEAR ALL
CATCH
ENDTRY

QUIT


