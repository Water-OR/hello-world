@echo off

cls
start /HIGH /WAIT /B "auto-push" .\auto\auto-add.bat
cls
start /HIGH /WAIT /B "auto-push" .\auto\auto-commit.bat
cls
start /HIGH /WAIT /B "auto-push" .\auto\auto-push.bat

:EndinG
set ask=
exit && exit