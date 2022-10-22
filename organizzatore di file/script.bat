@echo off 

echo welcome to this script 
set /A  years = %DATE:~6,4%
set /A newyears = years + 1 
set backupFilename=A%DATE:~6,4%-%newyears%
if exist %backupFilename%\ (
  echo Yes 
  For /F %%A in ('dir /b /a %_folder%') Do (
    Echo The folder is NOT empty
    goto :ok
)
Echo The folder is empty
:ok
) else (
    mkdir %backupFilename%
    cd %backupFilename%
    
)