lnResponse = MessageBox('Run SSCText to generate ascii code files?', 3, 'Generate SCC files?')

If lnResponse <> 6
    Return
EndIf

*Clear All
*Release All
Set ClassLib to && Must clear them out, cause we're about to generate ascii files of them

lnCount = DoSCCTextOnProject()

? Chr(10)+Chr(13)
? 'Done. ' + Str(lnCount) + ' files processed.'

*----------------------------------------------------------------------
Procedure DoSCCTextOnProject

Local loFile, loProject, lnCount

lcSCCText = Home(1) + 'SCCText.prg'
lnCount = 0
If !File(lcSCCText)
    Messagebox('Unable to find file ' + lcSCCText, 16, 'Error')
    Return 0
Endif

Try
    loProject = _vfp.ActiveProject
Catch To loEx
Endtry

If Type('loEx') = 'O'
    Messagebox('There are no active projects', 64, 'Error')
    Return 0
Endif

lcSkipFiles = 'LIST-FILES-TO-SKIP-HERE'

For Each loFile In loProject.Files

    If Inlist(loFile.Type, 'V', 'K', 'R') and ;
         !InList(Upper(JustFname(loFile.name)), Upper(lcSkipFiles)) ;
         and Fdate(loFile.name, 1) > SCCFileDateTime(loFile.name)
                ? 'Generating: ' + loFile.Name
                Do (lcSCCText) With loFile.Name
                lnCount = lnCount + 1 
    Endif
Endfor 

Return lnCount

*------------------------------------------------------------------
Procedure SCCFileDateTime(tcFile)

    lcSCCFilename = Upper(Strtran(Upper(tcFile), '.SCX', '.SCA'))
    lcSCCFilename = Strtran(lcSCCFilename, '.VCX', '.VCA')
    lcSCCFilename = Strtran(lcSCCFilename, '.FRX', '.FRA')

    If File(lcSCCFilename)
        Return Fdate(lcSCCFilename, 1)
    Else
        Return {^1900-01-01 00:00:00}
    EndIf
EndProc
