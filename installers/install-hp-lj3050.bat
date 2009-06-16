REM echo off
SET INSTALLER_EXE="c:\hp\lj3050\pcl6\lj3050x-309x-PCL6-pnp-win-en.exe"

REM IS WORD WRAP OFF????

REM DO NOT INCLUDE ANY SPACES IN THE PROGRAM_NAME VARIABLE!!!
SET PROGRAM_NAME=Flash_Player_Plugin_for_Firefox
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

REM ##############################################
REM #     CREATE LOCAL DIRECTORY IF REQUIRED     #
REM ##############################################

mkdir c:\hp\lj3050\pcl6

REM #######################################
REM #     COPY ANY FILES REQUIRED         #
REM #######################################

C:
cd c:\hp\lj3050\pcl6
copy "\\mtl-fp\Data\sys\hw\printers\hp\hp laser jet 3050\driver\lj3050x-309x-PCL6-pnp-win-en.exe" *

REM #######################################
REM #     RUN OUR INSTALLATION PROGRAM    #
REM #######################################
REM Now we run our installer

%INSTALLER_EXE%
echo "drivers installed to c:\hp\lj3050\pcl6"

REM #############################
REM #     MAKE LOG ENTRY        #
REM #############################
REM Log activity completion
SET LOG_ENTRY="	END	Installation of %PROGRAM_NAME%"
call %RESOURCES_URL%\log_this.bat %0 %LOG_ENTRY% %LOG_URL%
