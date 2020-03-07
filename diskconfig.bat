@echo off

set /p diskName=Disk Name (S to keep same):
set /p diskReset=Reset Disk (Y/n):


if %diskName%==S ( echo Disk Name Not Changed ) ELSE ( echo Disk Name: %diskName% > diskinfo.txt )

if %diskName%==Y ( del * ) ELSE ( echo Deletion Aborted )

:: i aint trying this rn idk if this will mess up my project lol