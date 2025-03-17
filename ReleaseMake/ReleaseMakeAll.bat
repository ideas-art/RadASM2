echo off
cls
echo Deleting files
echo del Assembly.zip
del Assembly.zip
echo del HighLevel.zip
del HighLevel.zip
echo del Language.zip
del Language.zip
echo del RadASMIDE.zip
del RadASMIDE.zip
echo del RAHelp.zip
del RAHelp.zip
echo del Release.zip
del Release.zip
echo del Release\Addins\*.tmp
del Release\Addins\*.tmp


echo off
cls
echo Lager RadASMIDE.zip
cd Release
"c:\Program Files\WinRAR\WinRar.exe" a -afzip -m5 -r -ibck ..\RadASMIDE.zip @..\ReleaseRadASMIDE.def
cd ..

echo off
cls
echo Lager Assembly.zip
cd Release
"c:\Program Files\WinRAR\WinRar.exe" a -afzip -m5 -r -ibck ..\Assembly.zip @..\ReleaseAssembly.def
cd ..

echo off
cls
echo Lager HighLevel.zip
cd Release
"c:\Program Files\WinRAR\WinRar.exe" a -afzip -m5 -r -ibck ..\HighLevel.zip @..\ReleaseHighLevel.def
cd ..

echo off
cls
echo Lager Language.zip
cd Release
"c:\Program Files\WinRAR\WinRar.exe" a -afzip -m5 -r -ibck ..\Language.zip Language\*.*
cd ..

echo off
cls
echo Lager RAHelp.zip
cd Release
"c:\Program Files\WinRAR\WinRar.exe" a -afzip -m5 -r -ibck ..\RAHelp.zip Help\RadASM.chm
cd ..

echo off
cls
echo Lager Release.zip
cd Release
"c:\Program Files\WinRAR\WinRar.exe" a -afzip -m5 -r -ibck ..\Release.zip *.*
cd ..
exit