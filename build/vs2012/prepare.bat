rem Usage: prepare.bat solution-name
rem Dependences: http://fart-it.sourceforge.net

rem Initialize
if not "%~1"=="" (
  set NAME=%1
) else (
  set /p NAME=Solution name:
)
set TEMPLATE=VSConsoleAppTemplate

rem Substitute strings in files
fart.exe -r %TEMPLATE%.* %TEMPLATE% %NAME%
rem Dont work with utf-8 :( TODO Use other utility
fart.exe ..\..\*.md %TEMPLATE% %NAME%
fart.exe -r ..\..\deploy\win\deploy.bat %TEMPLATE% %NAME%

rem Rename files
fart.exe -r -f %TEMPLATE%.* %TEMPLATE% %NAME%

rem Rename folders
rename %TEMPLATE% %NAME%
rename %TEMPLATE%_test %NAME%_test
pause
