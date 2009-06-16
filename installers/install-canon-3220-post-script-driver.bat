REM echo off

REM IS WORD WRAP OFF????
REM DO NOT INCLUDE ANY SPACES IN THE PROGRAM_NAME VARIABLE!!!

SET INSTALLER_EXE="C:\Program Files\7-Zip\7z" x ccdps3_2kxp2k3vista_ps3_0437_e.zip
SET PROGRAM_NAME=Install_Canon_3220_PS_Drivers
SET RESOURCES_URL=\\mtl-fp\Data\sys\installers\resources
SET LOG_URL="C:\Documents and Settings\%USERNAME%\Desktop\installation-log.txt"

REM Optional

SET ARCHIVE_SOURCE="\\mtl-fp\Data\sys\hw\printers\canon\irc3220\2k-xp-vista\ccdps3_2kxp2k3vista_ps3_0437_e.zip"
SET LOCAL_TARGET_DIRECTORY="C:\Data\sys\hw\printers\canon\3220\2k-xp-vista\post_script"

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

REM ##############################################
REM #     CREATE LOCAL DIRECTORY IF REQUIRED     #
REM ##############################################

mkdir %LOCAL_TARGET_DIRECTORY%

REM #######################################
REM #     COPY ANY FILES REQUIRED         #
REM #######################################

C:
cd %LOCAL_TARGET_DIRECTORY%
copy %ARCHIVE_SOURCE% *

REM #######################################
REM #     RUN OUR INSTALLATION PROGRAM    #
REM #######################################
REM Now we run our installer

%INSTALLER_EXE%
echo "Post script drivers placed in %LOCAL_TARGET_DIRECTORY%

REM #############################
REM #     MAKE LOG ENTRY        #
REM #############################
REM Log activity completion
SET LOG_ENTRY="	END	Installation of %PROGRAM_NAME%"
call %RESOURCES_URL%\log_this.bat %0 %LOG_ENTRY% %LOG_URL%

