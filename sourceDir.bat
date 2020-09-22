@echo off
where "%cd%;%cd%:%1" 2>nul
if ERRORLEVEL 1 (
    echo Program is in another directory
    findpthxt %1
) else (
    %1
)