@echo off
goto fix

:fix
cd C:\Windows\System32
reg export HKEY_CLASSES_ROOT\ms-msdt C:\ms-greatatsecuringsoftware.reg
reg delete HKEY_CLASSES_ROOT\ms-msdt /f
goto end

:end
echo Thanks Microsoft for making secure software!
pause
