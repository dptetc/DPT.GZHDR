@echo off
setlocal enableextensions enabledelayedexpansion
set SRCNAME=src
set OBJNAME=bin

:build
cls
echo Packing...
cd %SRCNAME%
"..\7z.exe" a -r -ssw -tzip "..\%OBJNAME%\skins\GZHDR-replacer.pk3" "*" >..\%OBJNAME%\logs\GZHDR.log
cd "..\%OBJNAME%"
cd "skins"
del GZHDR.pk3
ren GZHDR-replacer.pk3 GZHDR.pk3
goto end

:end
cls
echo Press ENTER key for exit.
pause>nul
exit