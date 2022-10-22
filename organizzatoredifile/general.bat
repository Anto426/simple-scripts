


echo welcome to this script 


set /A  years = %DATE:~6,4%


set /A newyears = years + 1 

set backupFilename=A%DATE:~6,4%-%newyears%


set list_1=Italiano Storia Inglese Informatica Matematica TP TLC 
set list_2 = Informatica TP TLC 
echo %backupFilename%
:loop 
IF !cout! lss !limit! (
      set /A cout = !cout! + 1 
    IF EXIST %backupFilename%\ (
      cd %backupFilename%\
          (for %%p in (%list_1%) do (
               echo  cartelle create %%p
               mkdir %%p
                copy "./ex.bat" "./%backupFilename%/%%p"
           )) 
           cd ..
           dir

    ) ELSE (
        echo %backupFilename% missing.
        mkdir %backupFilename%
        goto :loop
    )
)


