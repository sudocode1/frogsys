@echo off
set /p cmd=root@%ComputerName%=

if %cmd%==BACKUP call BACKUP/BACKUP.bat

