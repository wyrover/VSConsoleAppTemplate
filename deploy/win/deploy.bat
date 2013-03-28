rem Pack exe files in 7z archive
rem Dependences: http://www.7-zip.org

rem Initialize
call get_version.bat
set ROOT_PATH=%~dp0..\..
set ARC_NAME=VSConsoleAppTemplate_v%VERSION%
set ARC_PATH=%ARC_NAME%

rem Prepare files
mkdir %ARC_PATH%
copy /V %ROOT_PATH%\bin\VSConsoleAppTemplate.exe %ARC_PATH%\

rem Pack
erase *.7z
7za.exe a -t7z %ARC_NAME%.7z %ARC_PATH%\ -mx9
rmdir /S /Q %ARC_PATH%
