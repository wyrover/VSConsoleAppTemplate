call :CLEAUN
cd ..\REPLACE_APP_NAME
call :CLEAUN
cd .\test
call :CLEAUN
goto :END

:CLEAUN
del /F /Q *.ncb *.plog *.pdb *.lib *.ilk *.exp *.*.user *.obj *.sdf *.aps
del /F /Q /A:H  *.suo *.opensdf
rmdir /S /Q ipch
rmdir /S /Q Debug
rmdir /S /Q Release

:END
