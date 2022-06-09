@echo off
goto restore

:restore
cd C:\Windows\System32
reg import C:\ms-greatatsecuringsoftware.reg
del C:\ms-greatatsecuringsoftware.reg
goto end

:end
echo I have finished restoring the Microsoft Software. Thanks Microsoft for making secure software!
pause
