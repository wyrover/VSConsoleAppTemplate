rem Pack exe files in 7z archive
rem Dependences: http://www.7-zip.org

rem Initialize
call get_version.bat
set ROOT_PATH=%~dp0..\..
!TODO! SET ARC_NAME=app_v%VERSION%
SET ARC_PATH=%ARC_NAME%

rem Prepare files
mkdir %ARC_PATH%
!TODO! copy /V %ROOT_PATH%\bin\app.exe %ARC_PATH%\

rem Pack
erase *.7z
7za.exe a -t7z %ARC_NAME%.7z %ARC_PATH%\ -mx9
rmdir /S /Q %ARC_PATH%
