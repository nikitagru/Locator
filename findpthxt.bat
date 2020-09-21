@echo off
echo %1 > text.txt
FOR /F "tokens=* delims=;" %%A IN (".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC") DO find /I /C "%%A" text.txt
for /F %%i in (tt.txt) do set result=%%i
echo %result%