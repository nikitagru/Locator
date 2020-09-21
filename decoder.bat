@echo off
start /wait %1 2>nul
if ERRORLEVEL 9059 (
    echo program is not internal and has not found in PATH
) else (
    final.bat %1
)




REM nul > newDec.txt
REM chcp 1251 >nul
REM %1 2> newDec.txt
