echo off

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
SET LOG_ENTRY="	START	Installation of 7zip"
call %RESOURCES_URL%\log_this.bat %0 %LOG_ENTRY% %LOG_URL%

REM #######################################
REM #     RUN OUR INSTALLATION PROGRAM    #
REM #######################################
REM Now we run our installer
"\\mtl-fp\Data\sys\sw\win\apps\7zip\stable\4.57\7z457.exe"

REM #############################
REM #     MAKE LOG ENTRY        #
REM #############################
REM Log activity completion
SET LOG_ENTRY="	END	Installation of 7zip"
call %RESOURCES_URL%\log_this.bat %0 %LOG_ENTRY% %LOG_URL%
