@echo off
:: Pack exe files in 7z archive
:: Dependences: http://www.7-zip.org

:: Initialize
call get_version.bat
set ROOT_PATH=%~dp0..\..
set ARC_NAME=REPLACE_APP_NAME_v%VERSION%_win
set ARC_PATH=%ARC_NAME%

:: Prepare files
mkdir %ARC_PATH%
copy /V %ROOT_PATH%\bin\REPLACE_APP_NAME.exe %ARC_PATH%\

:: Pack
erase *.7z
7za.exe a -t7z %ARC_NAME%.7z %ARC_PATH%\ -mx9
rmdir /S /Q %ARC_PATH%
