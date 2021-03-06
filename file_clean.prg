* file clean
* clears up any old exe files that are at least two generations back to prevent old programs from using disk space

LOCAL ARRAY ExeDir[1]
LOCAL XTot

XTot = ADIR(ExeDir,"*.exe")

* get current version names of primary files
LOCAL lcch_logon, lcch_Client_View, lcch_report2, lcThisFile

lcch_logon 			= mcopyexe("Ch_Logon")
lcch_Client_View	= mcopyexe("Ch_Client_View")	
lcch_Report2		= mcopyexe("Ch_Report2")

FOR a = 1 TO XTot

	lcThisFile = UPPER(ALLTRIM(ExeDir[a,1]))

	* the file in folder list doesn't match the current file, try to delete it
	DO CASE
		CASE "CH_CLIENT_VIEW" $ lcThisFile

			IF lcThisFile == UPPER(ALLTRIM(lcch_Client_View))
				* do nothing.  This is our file
			ELSE
				TRY
					ERASE &lcThisFile.
				CATCH
				ENDTRY
			
			ENDIF

		CASE "CH_LOGON" $ lcThisFile AND lcThisFile # "CH_LOGON_LOADER"

			IF lcThisFile == UPPER(ALLTRIM(lcch_Logon))
				* do nothing.  This is our file
			ELSE
				TRY
					ERASE &lcThisFile.
				CATCH
				ENDTRY
			
			ENDIF

		CASE "CH_REPORT2" $ UPPER(ALLTRIM(ExeDir[a,1]))

			IF lcThisFile == UPPER(ALLTRIM(lcch_Report2))
				* do nothing.  This is our file
			ELSE
				TRY
					ERASE &lcThisFile.
				CATCH
				ENDTRY
			
			ENDIF


	OTHERWISE
		* do nothing.  this is not a file we are interested in checking

ENDCASE
NEXT



