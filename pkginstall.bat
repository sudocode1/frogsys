@echo off

echo pkg install

set /p drive=drive number=
set /p package=package?

copy %CD%\packages\%package%.pkg %CD%\dr%drive%\packages\%package%.bat
echo Package %package% to drive %drive% >> cfg/pkg.txt
echo package installed

pause

:: trying to find a package to create LOL