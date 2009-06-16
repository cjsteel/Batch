echo "sn goes here"
echo "Is this correct???"
REM echo "sn goes here"

REM echo off
SET INSTALLER_EXE="\\mtl-fp\Data\sys\sw\win\apps\lsi\MS Office 2003 Pro Volume\SETUPOLS.EXE"

REM IS WORD WRAP OFF????

REM DO NOT INCLUDE ANY SPACES IN THE PROGRAM_NAME VARIABLE!!!
SET PROGRAM_NAME=MS_Office_2003_Pro_Volume
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

REM mkdir c:\canon\irc3200\pcl5

REM #######################################
REM #     COPY ANY FILES REQUIRED         #
REM #######################################
REM C:
REM cd c:\canon\irc3200\pcl5
REM copy "\\mtl-fp\Data\sys\hw\printers\canon\IRC3200\PCL5e-c_v8.25_win2k-xp-2003-vista_INF.7z" *

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
