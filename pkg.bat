@echo off

echo pkg

set /p pkgCmd=pkg@%ComputerName%=

if %pkgCmd%==install call pkginstall.bat

if %pkgCmd%==archive call pkgarchive.bat

pause
