@echo off
echo %path% 1> path.txt
for /f "tokens=* delims=;" %%a in (path.txt) DO (
    where "%%a;%%a:%1" 2>nul
    if ERRORLEVEL 1 (
        echo Program is not in PATH directory, check name of your command
    )
)