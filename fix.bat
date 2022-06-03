@echo off
goto fix

:fix
reg export HKEY_CLASSES_ROOT\ms-mstd C:\ms-greatatsecuringsoftware.reg
reg delete HKEY_CLASSES_ROOT\ms-mstd
goto end

:end
echo Thanks Microsoft for making secure software!
pause