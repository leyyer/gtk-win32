:: run this from a VS x86 command prompt
@echo off

SET PACKAGE_NAME=gettext-runtime-0.18

set GETTEXT_SRC=%cd%
set GETTEXT_DEST=%cd%-x86
del CMakeCache.txt
rmdir /q /s CMakeFiles
set PATH=%PATH%;%ProgramFiles(x86)%\CMake 2.8\bin
cmake -G "NMake Makefiles" -DCMAKE_INSTALL_PREFIX=%GETTEXT_DEST% -DCMAKE_BUILD_TYPE=Release -DICONV_INCLUDE_DIR=%GETTEXT_SRC%\..\..\gtk\Win32\include -DICONV_LIBRARIES=%GETTEXT_SRC%\..\..\gtk\Win32\lib\iconv.lib
nmake clean
nmake
echo.Press return when ready to install!
pause

nmake install
mkdir %GETTEXT_DEST%\share
mkdir %GETTEXT_DEST%\share\doc
mkdir %GETTEXT_DEST%\share\doc\gettext
copy COPYING %GETTEXT_DEST%\share\doc\gettext
nmake clean

cd %GETTEXT_DEST%
set PATH=%PATH%;%ProgramFiles%\7-zip
del ..\%PACKAGE_NAME%-x86.7z
7z a ..\%PACKAGE_NAME%-x86.7z *
cd %GETTEXT_SRC%
rmdir /q /s %GETTEXT_DEST%

echo.Finished!
pause
