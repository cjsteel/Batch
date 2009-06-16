REM echo off
REM DO NOT INCLUDE ANY SPACES IN THE PROGRAM_NAME VARIABLE!!!
SET PROGRAM_NAME=DOT_NET_3.5_SP1_dotnetfx35.exe
SET INSTALLER_EXE="c:\Data\sys\sw\dot_net\dotnetfx35.exe"
SET RESOURCES_URL=\\mtl-fp\Data\sys\installers\resources
SET LOG_URL="C:\Documents and Settings\%USERNAME%\Desktop\installation-log.txt"

REM #######################################
REM # Updated Christopher Steel 2009-06-09#
REM # removed spaces from PROGRAM NAME    #
REM # Modified byMircea Costache         ##
REM # Created by Christopher Steel        #
REM #######################################

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

mkdir c:\Data\sys\sw\dot_net

REM #######################################
REM #     COPY ANY FILES REQUIRED         #
REM #######################################

C:
cd c:\Data\sys\sw\dot_net
copy "\\mtl-fp\Data\sys\sw\win\ms_apps\dot.net\dotnetfx35.exe"

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

