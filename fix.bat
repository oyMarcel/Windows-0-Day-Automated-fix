@echo off
title Halal Microsoft
@echo off
if not "%1"=="am_admin" (
    title Requesting admin permissions...
    powershell -Command "Start-Process -Verb RunAs -FilePath '%0' -ArgumentList 'am_admin'"
    exit /b
)
title Fixing halal Microshit software
goto fix

:fix
cd C:\Windows\System32
reg export HKEY_CLASSES_ROOT\ms-msdt C:\bk.reg
reg delete HKEY_CLASSES_ROOT\ms-msdt /f
goto end

:end
echo Thanks Microsoft for making secure software!
pause
