@echo off
title Fixing Microshaft software
goto fix

:fix
cd C:\Windows\System32
reg export HKEY_CLASSES_ROOT\ms-msdt C:\bk.reg
reg delete HKEY_CLASSES_ROOT\ms-msdt /f
goto end

:end
echo Thanks Microsoft for making shit software!
pause
