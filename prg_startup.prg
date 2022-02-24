Parameters lcCallingProgram_parameter

* run the ch_login update program

LOCAL lcRunFile
lcRunFile = ""


lcOriginalPath = Set("Path")
lcClassLib = Set("Classlib")
lcSetDataPaths = .T.
lcDataType = ''

If .Not.('OBJECTS' $ Upper(lcClassLib))
	Set Classlib To  'chbase'  Additive
	Set Classlib To  'ch_0'  Additive
	Set Classlib To  'Objects'  Additive
Endif


SET PROCEDURE TO clsevent additive

ON ERROR DO ErrorHandler WITH ERROR(),MESSAGE(),MESSAGE(1),PROGRAM(),LINENO(),PROGRAM(-1)


*** create the oApp object
oApp = Createobject('oApp',lcSetDataPaths, lcDataType,'login_startup')

SET DEFAULT TO c:\ch_exe


lcCH_Exe_files = Strtran(Upper(oApp.p_data_location),'CH_DATA','CH_EXE_FILES')

* remove any older .exe files that aren't in use to keep drive from filling up.

IF ALLTRIM(lcCH_Exe_files)==""
	* we don't have a path to the data or the downloaded exe files
	
	lcRunFile = Find_Ch_Logon()

	IF ALLTRIM(lcRunFile)==""
		=MESSAGEBOX("System Error:  We can't locate any Ch_logon.exe File to Run."+CHR(10)+"Please contact Tech Support.",16,"Run Error")
	ENDIF

ELSE


	DO File_Clean

	lcRunFile = mcopyexe("Ch_Logon")

ENDIF


TRY

*WAIT WINDOW "lcRunFile="+lcRunFile


	cMacro  = 'RUN /n "'+SYS(5)+SYS(2003)+'\'+lcRunFile+'" "OFF" .F. .F. ' && +lcID

	&cMacro.
CATCH
	MESSAGEBOX('Unable to run HOPE',0+4096,'Call Tech',12000)
ENDTRY












