@echo off

for /f "Delims=" %%a in (boot.txt) do (
    set bootyesno=%%a
)

if %bootyesno%==Y goto bootDISK
echo BOOT ERROR: NO BOOT RECORD
pause
exit

:bootDISK
echo booting
mkdir runtime

set /p run=request=

if %run%==program (
    set /p prToLaunch=program=
    echo program with parameters %prToLaunch%
    call %CD%\packages\%prToLaunch%.bat
)


pause