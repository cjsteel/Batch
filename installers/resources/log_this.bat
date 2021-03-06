@echo off
REM MASTER.BAT
REM Parameters
REM %1 = name of calling program (batch file name)
REM %2 = log entry we want made
REM %3 = logging url where we want this item logged

REM Set up a nicely formatted date variable
REM set yyyymmdd=%date:~6,4%-%date:~3,2%-%date:~0,2%
set yyyymmdd=%date%

REM Send a blank line to our log file
echo. >> %3

REM Send nicely formated date and time entry to our log file
REM ######FIRST LOG LINE ##############
echo %yyyymmdd% AT %TIME% - AUTOMATED LOG ENTRY REQUESTED BY %1 >> %3

REM remove any quotes from our log entry
REM remove quotes in our string
set output=%2
for /f "useback tokens=*" %%a in ('%output%') do set output=%%~a
echo.%output% >> %3
