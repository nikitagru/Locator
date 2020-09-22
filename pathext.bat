@echo off
if not %2==0 (
    %1
) else (
    echo Program have unknown extension, trying to find in PATH directory
    findPath.bat %1
)