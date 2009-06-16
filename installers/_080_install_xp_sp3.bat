REM echo off
REM DO NOT INCLUDE ANY SPACES IN THE PROGRAM_NAME VARIABLE!!!
SET PROGRAM_NAME=Windows_XP_SP3
SET INSTALLER_EXE="\\mtl-fp\data\sys\sw\win\os\xp\sp3\windowsxp-kb936929-sp3-x86-enu.exe"
SET RESOURCES_URL=\\mtl-fp\Data\sys\installers\resources
SET LOG_URL="C:\Documents and Settings\%USERNAME%\Desktop\installation-log.txt"

REM #####################################################################################
REM # Modified by Christopher Steel                                                     #
REM # 2009-06-09 - Removed spaces from PROGRAM_NAME variable name                       #
REM # Modified byMircea Costache                                                        #
REM # Created by Christopher Steel                                                      #
REM #####################################################################################

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

