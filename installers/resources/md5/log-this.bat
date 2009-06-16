@echo off
REM log-this.bat
REM Parameters
REM %1 = name of calling program (batch file name)
REM %2 = log entry we want made
REM %3 = logging url where we want this item logged

REM ##############################################################
REM # example of batch file requirments for calling log-this.bat #
REM ##############################################################
REM 
REM SET RESOURCES_URL=\\mtl-fp\Data\sys\installers\resources
REM SET LOG_URL="C:\Documents and Settings\%USERNAME%\Desktop\installation-log.txt"
REM ...
REM SET LOG_ENTRY="	START	Installation of %PROGRAM_NAME%"
REM call %RESOURCES_URL%\log_this.bat %0 %LOG_ENTRY% %LOG_URL%

REM ##########################
REM # start our logging code #
REM ##########################


REM ##########################
REM # Our date variable      #
REM ##########################

REM Set up a nicely formatted date variable
REM set yyyymmdd=%date:~6,4%-%date:~3,2%-%date:~0,2%
set yyyymmdd=%date%

REM ############################
REM #  Write blank line to log #
REM ############################
REM Send a blank line to our log file

echo. >> %3

REM ############################
REM # Print a log entry        #
REM ############################
REM Send nicely formated date and time entry to our log file

REM ######FIRST LOG LINE ##############
echo %yyyymmdd% AT %TIME% - AUTOMATED LOG ENTRY REQUESTED BY %1 >> %3

REM #################################
REM # Is this really required?      #
REM #################################
REM remove any quotes from our log entry
REM remove quotes in our string

set output=%2
for /f "useback tokens=*" %%a in ('%output%') do set output=%%~a
echo.%output% >> %3