@echo off
title Fix Microsoft
@echo off
if not "%1"=="am_admin" (
    title Requesting Admin Permissions...
    powershell -Command "Start-Process -Verb RunAs -FilePath '%0' -ArgumentList 'am_admin'"
    exit /b
)
title Fixing Microsoft Software
goto fix

:fix
cd C:\Windows\System32
reg export HKEY_CLASSES_ROOT\ms-msdt C:\bk.reg
reg delete HKEY_CLASSES_ROOT\ms-msdt /f
goto end

:end
echo I have finished fixing the Microsoft Software. Thanks Microsoft for making secure software!
pause