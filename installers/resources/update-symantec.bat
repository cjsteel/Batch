@echo off
:: Downloads and runs the Symantec Intelligent Updater

::Check for Win2000 or newer
if not exist %windir%\system32\ftp.exe goto HELP
if [%date:~10,4%]==[] goto HELP
goto PROCESS

:HELP
echo This batch file requires Windows 2000 or newer.
pause
goto DONE

:PROCESS
:: Create the FTP Script
>  "%temp%\symantec.scr" echo open ftp.symantec.com
>> "%temp%\symantec.scr" echo anonymous
>> "%temp%\symantec.scr" echo -navuser@symantec.com
>> "%temp%\symantec.scr" echo cd /public/english_us_canada/
>> "%temp%\symantec.scr" echo cd antivirus_definitions/norton_antivirus/
>> "%temp%\symantec.scr" echo binary
>> "%temp%\symantec.scr" echo hash
>> "%temp%\symantec.scr" echo prompt
>> "%temp%\symantec.scr" echo mget %date:~10,4%%date:~7,2%%date:~4,2%-*-i32.exe
>> "%temp%\symantec.scr" echo bye

:: Set current directory to users TEMP directory
cd /d "%temp%"

:: Delete any existing intelligent updater file
for %%x in (%date:~10,4%%date:~7,2%%date:~4,2%-*-i32.exe) do del %%x

:: Warn user not to close windows
echo Do not close this window. This window is waiting for the FTP
echo program (running in a separate window) to finish. After FTP
echo finishes downloading the update, this window will install
echo the update, then close automatically.

:: Use the FTP program to download the updater
start /w %windir%\system32\ftp.exe -s:%temp%\symantec.scr

:: Run the updater
for %%x in (%date:~10,4%%date:~7,2%%date:~4,2%-*-i32.exe) do start /w %%x /Q

::Delete all temporary files
for %%x in (%date:~10,4%%date:~7,2%%date:~4,2%-*-i32.exe) do del %%x
del "%temp%\symantec.scr"

:DONE
cls
