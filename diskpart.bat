@echo off
echo DISKPART

set /p disk=disk number=

mkdir dr%disk%

set /p diskName=disk name=
set /p BOOT=Mount Boot [Y/N]=

echo Disk Name: %diskName% > %CD%/dr%disk%/diskinfo.txt
echo Disk Directory: %CD%/dr1 >> %CD%/dr%disk%\diskinfo.txt
echo Disk Number: %disk% >> %CD%/dr%disk%/diskinfo.txt
echo %BOOT% > %CD%/dr%disk%/boot.txt

copy finishDiskPart.bat dr%disk%\finishDiskPart.bat
copy diskconfig.bat dr%disk%\diskconfig.bat
copy boot.bat dr%disk%\boot.bat

echo Disk dr%disk% created >> cfg/diskpart.txt
echo disk creation complete
pause
echo exiting
pause 1