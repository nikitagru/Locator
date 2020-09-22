@echo off
echo %1 > text.txt
FOR /F "delims=;" %%A IN (".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC") DO (
    find /C /I "%%A" text.txt 1> isInPathext.txt 
)
for /f "tokens=3 delims= " %%a in (isInPathext.txt) do (
    pathext.bat %1 %%a
)