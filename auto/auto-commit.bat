@echo off
cls

:setcommit
set /p ask=Your commit:
if "%ask%" == "" (
  cls
  echo [31mError:Commit cannot be space[0m
  goto setcommit
)

set datewithoutweek=%date:~0,10%
set commit_inp=%datewithoutweek:/=.%_%time:~0,5%_Update=%ask%
echo Your commit is %commit_inp%

set /p ask=Continue?(y/n):
if /I "%ask%" == "n" (
  cls
  echo set your commit again :]
  goto setcommit
)

git commit -m "%commit_inp%"
set datewithoutweek=

echo End of committing && pause > nul

exit