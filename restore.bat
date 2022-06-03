@echo off
goto restore

:restore
cd C:\Windows\System32
reg import C:\ms-greatatsecuringsoftware.reg
goto end

:end
echo Thanks Microsoft for making secure software!
pause
