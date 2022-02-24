* try to find any ch_logon file in the current folder

LOCAL ARRAY ExeDir[1]
LOCAL XTot, PassBack

XTot = ADIR(ExeDir,"*.exe")
PassBack = ""


* get current version names of primary files
LOCAL lcThisFile


FOR a = 1 TO XTot

	lcThisFile = UPPER(ALLTRIM(ExeDir[a,1]))

	* the file in folder list doesn't match the current file, try to delete it

	IF "CH_LOGON" $ lcThisFile AND lcThisFile # "CH_LOGON_LOADER"
		PassBack = lcThisFile
	ENDIF

NEXT
RETURN PassBack