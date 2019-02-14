@echo off

rem H-Hello? You are modding this script? Well, right, welcome.

rem put them on the utdir or cd to the dir then run it on cmd

echo ALEXRUNE - Deltarune music pack helper. Both written and modded by LWYS.

rem echo jump to room 132 when boot

cd %~dp0

mkdir _pktmp

set musdir=%cd%\MY_ONE_TRUE_LOVE
set gmrunner=%cd%\DELTARUNE.exe
set gmdata=%cd%\data(byfunny).win
set origgamedir=%cd%
set tmp22=%cd%

cd _pktmp

echo Copying DELTARUNE to %cd%...
mkdir mus
mkdir lang
FORFILES /P "%origgamedir%\mus" /M *.ogg /C "cmd /c %tmp22%\autoalex_copyer.bat %origgamedir%\mus\@file"
FORFILES /P "%origgamedir%" /M *.ogg /C "cmd /c %tmp22%\autoalex_copyerb.bat %origgamedir%\@file"
copy ..\credits.txt .\ > nul
copy "%gmdata%" data.win > nul
copy "%gmrunner%" DELTARUNE.exe > nul
copy "%origgamedir%\lang\lang_en.json" lang\lang_en.json > nul
copy "%origgamedir%\lang\lang_eng.json" lang\lang_eng.json > nul
copy "%origgamedir%\lang\lang_jp.json" lang\lang_jp.json > nul
copy "%origgamedir%\lang\lang_jpn.json" lang\lang_jpn.json > nul
copy "%origgamedir%\audiogroup1.dat" audiogroup1.dat > nul
FORFILES /P "%musdir%\mus" /C "cmd /c %tmp22%\autoalex_copyer.bat %musdir%\mus\@file"
FORFILES /P "%musdir%" /C "cmd /c %tmp22%\autoalex_copyer.bat %musdir%\@file"

echo Starting "%cd%\DELTARUNE.exe"...
start /wait "" "%cd%\DELTARUNE.exe"
cd ..

rmdir /S /Q _pktmp>nul

echo EVERYTHING IS DONE. "%CD%\_pktmp" ALSO GOT DELETED.