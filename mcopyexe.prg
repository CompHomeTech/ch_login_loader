*********************************************************************************************************************************************
* PROCEDURE mCopyExe
*********************************************************************************************************************************************
LPARAMETERS pMainExe

*SET STEP ON 

LOCAL lcExeToRun, lcRunDir, lcMsg, cMacroFileLocation, lcMainExe, lcVerStr, lcSource, lcDest

lcRunDir = OApp.p_startup_directory
lcMainExe = pMainExe + ".EXE"
lcVerStr = ""


lcExeToRun = ""
lcMsg = ''+Chr(13)+Chr(13)+'Please Wait while the program loads'+Chr(13)+Chr(13)

cMacroFileLocation  = Substr(Alltrim(oApp.p_data_location),1,At('\',Alltrim(oApp.p_data_location),Occurs('\',Alltrim(oApp.p_data_location))-1))+'ch_exe_files\'+ALLTRIM(lcMainExe)

lcSource = cMacroFileLocation


LOCAL ARRAY aFver[1]

cMacroGetVersion = 'aFver,"'+cMacroFileLocation+'"'

IF Agetfileversion(&cMacroGetVersion) > 0  &&& we have a version number for server
	IF Type('aFVer[4]')='C'
		lcVerStr = "_"+STRTRAN(aFVer[4],".","_")
	ENDIF
ENDIF

lcExeToRun = pMainExe+lcVerStr+".exe"

lcDest = lcRunDir + "\"+lcExeToRun


IF ! FILE(lcRunDir+"\"+lcExeToRun) AND CheckforBlockIIVersion()

	Wait  lcMsg Window At 10,10 Nowait Timeout 10

	TRY
		COPY FILE &lcSource. TO &lcDest.
	CATCH
		=MESSAGEBOX("HOPE Could not copy the newest version: "+lcMainExe+" to your computer.",48,"UPDATE ERROR")	
	ENDTRY	
ELSE
	* use existing file
	lcExeToRun = GetExistingFile()+"exe"

	IF FILE(lcExeToRun)
	ELSE
		lcExeToRun = lcRunDir + "\ch_logon.exe"
	ENDIF
ENDIF


RETURN lcExeToRun
*********************************************************************************************************************************************

*********************************************************************************************************************************************
PROCEDURE CheckforBlockIIVersion
*********************************************************************************************************************************************

* we need to make sure we have the block II version of the menu in the Ch_Exe folder before we switch icons to the loader.


LOCAL lcExeToRun, lcRunDir, lcMsg, cMacroFileLocation, lcMainExe, lcVerStr, lcSource, lcDest, lcVerNum, PassBack

lcRunDir = OApp.p_startup_directory
lcMainExe = "CH_LOGON.EXE"
lcVerStr = ""
lcVerNum = 0
PassBack = .T.


lcExeToRun = ""
*lcMsg = ''+Chr(13)+Chr(13)+'Please Wait while the program loads'+Chr(13)+Chr(13)

cMacroFileLocation  = Substr(Alltrim(oApp.p_data_location),1,At('\',Alltrim(oApp.p_data_location),Occurs('\',Alltrim(oApp.p_data_location))-1))+'ch_exe_files\'+ALLTRIM(lcMainExe)

lcSource = cMacroFileLocation


LOCAL ARRAY aFver[1]

cMacroGetVersion = 'aFver,"'+cMacroFileLocation+'"'

IF Agetfileversion(&cMacroGetVersion) > 0  &&& we have a version number for server
	IF Type('aFVer[4]')='C'
		lcVerStr = "_"+STRTRAN(aFVer[4],".","_")
	ENDIF
ENDIF

* make sure this version is Block II or higher.
lcVerNum = VAL(STRTRAN(lcVerStr,"_",""))

*WAIT WINDOW lcVerNum
 
IF lcVerNum < 51371
	PassBack = .F.
ENDIF
	
RETURN PassBack
*********************************************************************************************************************************************


*********************************************************************************************************************************************
PROCEDURE GetExistingFile
*********************************************************************************************************************************************

* get the version number and name of the current ch_logon File


LOCAL lcExeToRun, lcRunDir, lcMsg, cMacroFileLocation, lcMainExe, lcVerStr

lcRunDir = OApp.p_startup_directory
lcMainExe = "CH_LOGON"
lcVerStr = ""


lcExeToRun = ""
*lcMsg = ''+Chr(13)+Chr(13)+'Please Wait while the program loads'+Chr(13)+Chr(13)

cMacroFileLocation  = lcRunDir+'\'+ALLTRIM(lcMainExe)

lcSource = cMacroFileLocation


LOCAL ARRAY aFver[1]

cMacroGetVersion = 'aFver,"'+cMacroFileLocation+'"'

IF Agetfileversion(&cMacroGetVersion) > 0  &&& we have a version number for server
	IF Type('aFVer[4]')='C'
		lcVerStr = "_"+STRTRAN(aFVer[4],".","_")
	ENDIF
ENDIF

lcExeToRun = lcMainExe+lcVerStr
	
RETURN lcExeToRun
*********************************************************************************************************************************************


