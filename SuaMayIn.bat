@echo off 
rem stop spooler 
net stop spooler 
rem pause 4 seconds 
rem delete print jobs 
del /Q /F %SystemRoot%\system32\spool\printers\*.* 
pause 4 seconds 
rem start spooler 
net start spooler 
echo done!