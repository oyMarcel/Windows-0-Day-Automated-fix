@echo off
goto restore
if not "%1"=="am_admin" (
    title Requesting admin permissions...
    powershell -Command "Start-Process -Verb RunAs -FilePath '%0' -ArgumentList 'am_admin'"
    exit /b
)
:restore
cd C:\Windows\System32
reg import C:\bk.reg
del C:\bk.reg
goto end

:end
echo Thanks Microsoft for making secure software!
pause
