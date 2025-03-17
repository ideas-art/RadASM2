@echo off
cls
rem echo Pakker ut Release.zip
rem "C:\Program Files\WinZip\winzip32.exe" -e Release.Zip Release

echo Oppdaterer addins
xcopy ..\Addins\AddinMana\AddinMana.dll Release\Addins  /F /Y /I > ReleaseUpdate.log
xcopy ..\Addins\AdvEdit\AdvEdit.dll Release\Addins  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\AlexMenu\AlexMenu.dll Release\Addins  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\Collapse\Collapse.dll Release\Addins  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\CppParse\CppParse.dll Release\Addins  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\CreateProtoEx\CreateProtoEx.dll Release\Addins  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\CtrlNames\CtrlNames.dll Release\Addins  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\DlgToWin\DlgToWin.dll Release\Addins  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\FbHelp\FbHelp.dll Release\Addins  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\FlipCase\FlipCase.dll Release\Addins  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\FpHelp\FpHelp.dll Release\Addins  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\masmParse\masmParse.dll Release\Addins  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\Preview\Preview.dll Release\Addins  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\ProjectTimer\ProjectTimer.dll Release\Addins  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\ProjectZip\ProjectZip.dll Release\Addins  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\PthExpl\PthExpl*.dll Release\Addins  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\RADbg\RADbg.dll Release\Addins  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\RADebug\RADebug.dll Release\Addins  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\RadFavs\RadFavs.dll Release\Addins  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\RadHelp\Source\RadHelp.dll Release\Addins  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\ReallyRad\ReallyRad.dll Release\Addins  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\ResourceID\ResourceID.dll Release\Addins  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\solParse\solParse.dll Release\Addins  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\SourceSafe\SourceSafe.dll Release\Addins  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\StyleMana\StyleMana.dll Release\Addins  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\TbrCreate\TbrCreate.exe Release\Addins  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\UpdateChecker\UpdateChecker.dll Release\Addins  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\RadAsm.inc Release\Masm\Inc  /F /Y /I >> ReleaseUpdate.log

rem xcopy ..\Addins\\.dll Release\Addins  /F /Y /I >> ReleaseUpdate.log

echo Oppdaterer addins hjelpefiler
xcopy ..\Addins\AddinMana\AddinMana.txt Release\Addins\Help  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\AdvEdit\AdvEdit.txt Release\Addins\Help  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\AlexMenu\AlexMenu.txt Release\Addins\Help  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\Collapse\Collapse.txt Release\Addins\Help  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\CreateProtoEx\CreateProtoEx.txt Release\Addins\Help  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\CtrlNames\CtrlNames.txt Release\Addins\Help  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\DlgToWin\DlgToWin.txt Release\Addins\Help  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\FlipCase\FlipCase.txt Release\Addins\Help  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\Preview\Preview.txt Release\Addins\Help  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\ProjectTimer\ProjectTimer.txt Release\Addins\Help  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\ProjectZip\ProjectZip.txt Release\Addins\Help  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\PthExpl\PthExpl*.txt Release\Addins\Help  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\RADbg\RADbg.txt Release\Addins\Help  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\RADebug\RADebug.txt Release\Addins\Help  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\RadFavs\RadFavs.txt Release\Addins\Help  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\RadHelp\RadHelp.txt Release\Addins\Help  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\ReallyRad\ReallyRad.txt Release\Addins\Help  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\ResourceID\ResourceID.txt Release\Addins\Help  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\SourceSafe\SourceSafe.txt Release\Addins\Help  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\StyleMana\StyleMana.txt Release\Addins\Help  /F /Y /I >> ReleaseUpdate.log
xcopy ..\Addins\UpdateChecker\UpdateChecker.txt Release\Addins\Help  /F /Y /I >> ReleaseUpdate.log


rem xcopy ..\Addins\\.txt Release\Addins\Help  /F /Y /I >> ReleaseUpdate.log

echo Oppdaterer custom controls
xcopy ..\..\CodeComplete\RACodeComplete.dll Release  /F /Y /I >> ReleaseUpdate.log
xcopy ..\..\CodeComplete\RACodeComplete.inc Release\Masm\Inc  /F /Y /I >> ReleaseUpdate.log

xcopy ..\..\FileBrowser\RAFile.dll Release  /F /Y /I >> ReleaseUpdate.log
xcopy ..\..\FileBrowser\RAFile.inc Release\Masm\Inc  /F /Y /I >> ReleaseUpdate.log

xcopy ..\..\Grid\RAGrid.dll Release  /F /Y /I >> ReleaseUpdate.log
xcopy ..\..\Grid\RAGrid.inc Release\Masm\Inc  /F /Y /I >> ReleaseUpdate.log

xcopy ..\..\HexEd\RAHexEd.dll Release  /F /Y /I >> ReleaseUpdate.log
xcopy ..\..\HexEd\RAHexEd.inc Release\Masm\Inc  /F /Y /I >> ReleaseUpdate.log

xcopy ..\..\Property\RAProperty.dll Release  /F /Y /I >> ReleaseUpdate.log
xcopy ..\..\Property\RAProperty.inc Release\Masm\Inc  /F /Y /I >> ReleaseUpdate.log

xcopy ..\..\SimEd\RAEdit.dll Release  /F /Y /I >> ReleaseUpdate.log
xcopy ..\..\SimEd\RAEdit.inc Release\Masm\Inc  /F /Y /I >> ReleaseUpdate.log

xcopy ..\..\SpreadSheet\SprSht.dll Release  /F /Y /I >> ReleaseUpdate.log
xcopy ..\..\SpreadSheet\SpreadSheet.inc Release\Masm\Inc  /F /Y /I >> ReleaseUpdate.log

echo Oppdaterer Language
xcopy ..\Language\*.lng Release\Language  /F /Y /I >> ReleaseUpdate.log
xcopy ..\RadLNG.exe Release\Language  /F /Y /I >> ReleaseUpdate.log

echo Oppdaterer api filer
xcopy ..\ApiFiles\masmApiStruct.api Release\Masm  /F /Y /I >> ReleaseUpdate.log
xcopy ..\ApiFiles\masmArray.api Release\Masm  /F /Y /I >> ReleaseUpdate.log
xcopy ..\ApiFiles\masmType.api Release\Masm  /F /Y /I >> ReleaseUpdate.log
xcopy ..\ApiFiles\cppArray.api Release\Cpp  /F /Y /I >> ReleaseUpdate.log
xcopy ..\ApiFiles\cppType.api Release\Cpp  /F /Y /I >> ReleaseUpdate.log
xcopy ..\ApiFiles\fbType.api Release\fb  /F /Y /I >> ReleaseUpdate.log
xcopy ..\ApiFiles\fpType.api Release\fp  /F /Y /I >> ReleaseUpdate.log

echo Oppdaterer RadASM
xcopy ..\RadASM.exe Release\  /F /Y /I >> ReleaseUpdate.log
xcopy ..\WhatsNew.txt Release\  /F /Y /I >> ReleaseUpdate.log

xcopy ..\RAHelp\RadASM.chm Release\Help  /F /Y /I >> ReleaseUpdate.log
xcopy ..\RAHelp\RadASMini.rtf Release\Help  /F /Y /I >> ReleaseUpdate.log

exit