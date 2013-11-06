@echo off
:: Usage: prepare.bat
:: Dependences: https://github.com/Ruzzz/Substitute

call PREPARE_AND_DELETE_CONFIG.bat

:: Initialize
if "%APP_NAME%"=="" (
    set /p APP_NAME=Application name:
)
if "%AUTHOR%"=="" (
    set /p AUTHOR=Author:
)
if "%EMAIL%"=="" (
    set /p EMAIL=E-Mail:
)
set TEMPLATE_APP_NAME=REPLACE_APP_NAME
set TEMPLATE_AUTHOR=REPLACE_AUTHOR
set TEMPLATE_EMAIL=REPLACE_EMAIL
set ROOT=%~dp0

:: Replace application name
substi -nobackup %ROOT%build\vs2012\vs_clean_folders.bat %TEMPLATE_APP_NAME% %APP_NAME%
substi -nobackup %ROOT%build\vs2012\%TEMPLATE_APP_NAME%.sln %TEMPLATE_APP_NAME% %APP_NAME%
substi -nobackup %ROOT%build\vs2012\%TEMPLATE_APP_NAME%\%TEMPLATE_APP_NAME%.vcxproj %TEMPLATE_APP_NAME% %APP_NAME%
substi -nobackup %ROOT%deploy\win\deploy.bat %TEMPLATE_APP_NAME% %APP_NAME%
substi -nobackup %ROOT%test\test.cpp %TEMPLATE_APP_NAME% %APP_NAME%
substi -nobackup %ROOT%src\main.cpp %TEMPLATE_APP_NAME% %APP_NAME%
substi -nobackup %ROOT%src\defs.h %TEMPLATE_APP_NAME% %APP_NAME%
substi -nobackup %ROOT%README.md %TEMPLATE_APP_NAME% %APP_NAME%
substi -nobackup %ROOT%README-RU.md %TEMPLATE_APP_NAME% %APP_NAME%

:: Replace author name
substi -nobackup %ROOT%MIT-License.txt %TEMPLATE_AUTHOR% %AUTHOR%
substi -nobackup %ROOT%src\defs.h %TEMPLATE_AUTHOR% %AUTHOR%
substi -nobackup %ROOT%src\main.cpp %TEMPLATE_AUTHOR% %AUTHOR%
substi -nobackup %ROOT%test\test.cpp %TEMPLATE_AUTHOR% %AUTHOR%

:: Replace author e-mail
substi -nobackup %ROOT%src\defs.h %TEMPLATE_EMAIL% %EMAIL%
substi -nobackup %ROOT%src\main.cpp %TEMPLATE_EMAIL% %EMAIL%
substi -nobackup %ROOT%test\test.cpp %TEMPLATE_EMAIL% %EMAIL%

:: Rename files
rename %ROOT%build\vs2012\%TEMPLATE_APP_NAME%.sln %APP_NAME%.sln
rename %ROOT%build\vs2012\%TEMPLATE_APP_NAME%\%TEMPLATE_APP_NAME%.vcxproj %APP_NAME%.vcxproj
rename %ROOT%build\vs2012\%TEMPLATE_APP_NAME%\%TEMPLATE_APP_NAME%.vcxproj.filters %APP_NAME%.vcxproj.filters

:: Rename folder
rename %ROOT%build\vs2012\%TEMPLATE_APP_NAME% %APP_NAME%
pause
