REM echo off
SET INSTALLER_EXE="\\mtl-fp\Data\sys\sw\win\ms_apps\SyncToy v1.4\Setup.msi"

REM IS WORD WRAP OFF????

REM DO NOT INCLUDE ANY SPACES IN THE PROGRAM_NAME VARIABLE!!!
SET PROGRAM_NAME=Microsoft_SyncToy
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

REM mkdir c:\Data\sys\sw\office\2003\sp3

REM #######################################
REM #     COPY ANY FILES REQUIRED         #
REM #######################################

REM C:
REM cd c:\Data\sys\sw\office\2003\sp3
REM copy "\\mtl-fp\Data\sys\sw\win\apps\lsi\MS Office 2003 sp3\Office2003SP3-KB923618-FullFile-ENU.exe"

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
