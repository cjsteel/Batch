echo off

REM IS WORD WRAP OFF?
REM DO NOT INCLUDE ANY SPACES IN THE PROGRAM_NAME VARIABLE!!!

SET INSTALLER_EXE="\\mtl-fp\Data\sys\sw\win\apps\vlc\vlc-0.9.9-win32.exe"
SET PROGRAM_NAME=vlc-0.9.9-win32.exe
SET RESOURCES_URL=\\mtl-fp\Data\sys\installers\resources
SET LOG_URL="C:\Documents and Settings\%USERNAME%\Desktop\installation-log.txt"

REM ################################
REM # Created by Christopher Steel #
REM ################################

REM #############################
REM #     MAKE LOG ENTRY        #
REM #############################
REM Log the start of activities
REM Prepare to call log_this.bat
SET LOG_ENTRY="	START	Installation of %PROGRAM_NAME%"
call %RESOURCES_URL%\log_this.bat %0 %LOG_ENTRY% %LOG_URL%

REM #######################################
REM #     RUN OUR INSTALLATION PROGRAM    #
REM #######################################
REM Now we run our installer

%INSTALLER_EXE%

REM #############################
REM #     MAKE LOG ENTRY        #
REM #############################
REM Log activity completion
SET LOG_ENTRY="	END	Installation of %PROGRAM_NAME%"
call %RESOURCES_URL%\log_this.bat %0 %LOG_ENTRY% %LOG_URL%






