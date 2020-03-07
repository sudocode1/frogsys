@echo off

echo pkg arhive

set /p drive=drive to archive to=
set /p directoryArchive=directory=
set /p package=package name?

copy %directoryArchive%\%package%.bat %CD%\dr%drive%\archives\%package%.pkg
echo Package %package% archived to drive %drive% >> cfg/pkg.txt
echo package archived 

pause

:: trying to find a package to create LOL