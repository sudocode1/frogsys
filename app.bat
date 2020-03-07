@echo off

echo This is the root terminal. Be careful.

:program
set /p cmd=usr@%ComputerName%=

if %cmd%==diskpart call diskpart.bat

if %cmd%==pkg call pkg.bat

if %cmd%==thematrix call cmds/thematrix.bat

if %cmd%==root call root.bat

pause
goto program