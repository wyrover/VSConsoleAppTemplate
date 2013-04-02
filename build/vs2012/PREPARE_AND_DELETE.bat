@echo off
:: Usage: prepare.bat solution-name
:: Dependences: https://github.com/Ruzzz/Substitute

:: Initialize
if not "%~1"=="" (
    set NAME=%1
) else (
    set /p NAME=Solution name:
)
set TEMPLATE=VSConsoleAppTemplate
set ROOT=%~dp0

:: Substitute strings in files
substi -nobackup %ROOT%%TEMPLATE%.sln %TEMPLATE% %NAME%
substi -nobackup %ROOT%%TEMPLATE%\%TEMPLATE%.vcxproj %TEMPLATE% %NAME%
substi -nobackup %ROOT%..\..\deploy\win\deploy.bat %TEMPLATE% %NAME%
substi -nobackup %ROOT%..\..\test\test.cpp %TEMPLATE% %NAME%
substi -nobackup %ROOT%..\..\src\main.cpp %TEMPLATE% %NAME%
substi -nobackup %ROOT%..\..\src\defs.h %TEMPLATE% %NAME%
substi -nobackup %ROOT%..\..\README.md %TEMPLATE% %NAME%
substi -nobackup %ROOT%..\..\README-RU.md %TEMPLATE% %NAME%

:: Rename files
rename %ROOT%%TEMPLATE%.sln %NAME%.sln
rename %ROOT%%TEMPLATE%\%TEMPLATE%.vcxproj %NAME%.vcxproj
rename %ROOT%%TEMPLATE%\%TEMPLATE%.vcxproj.filters %NAME%.vcxproj.filters

:: Rename folder
rename %ROOT%%TEMPLATE% %NAME%
pause
