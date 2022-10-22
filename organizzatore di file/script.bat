@echo off 

echo welcome to this script 
set /A  years = %DATE:~6,4%
set /A newyears = years + 1 
set backupFilename=A%DATE:~6,4%-%newyears%
echo -------------------------------------------
echo Anno %years% - %newyears%  = %backupFilename%
echo -------------------------------------------
echo check dir 
echo -------------------------------------------