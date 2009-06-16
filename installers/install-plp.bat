REM echo off

REM IS WORD WRAP OFF????
REM DO NOT INCLUDE ANY SPACES IN THE PROGRAM_NAME VARIABLE!!!

SET INSTALLER_EXE="\\mtl-fp\Data\sys\sw\win\apps\OpenOffice\OOo_2.4.1_Win32Intel_install_wJRE_en-US.exe"
SET PROGRAM_NAME=PartListPlus
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
C:
CD C:\Documents and Settings\%USERNAME%
MKDIR PartListPlus
CD PartListPlus
MKDIR archives
MKDIR configurations
MKDIR multimedia
MKDIR queries
MKDIR database
MKDIR personal
MKDIR updates

REM #######################################
REM #     COPY ANY FILES REQUIRED         #
REM #######################################
copy "\\mtl-fp\Data\sys\sw\win\apps\plp\plp and dlls\PartListPlus\*.*
ECHO "fiND C:\Documents and Settings\%USERNAME%\PartListPlus\plpLUS.EXE"
ECHO "AND CREATE A SHORTCUT"
ECHO " You may need to manually copy the users old PLP directories"
ECHO " \\mtl-fp\Data\sys\installers\_PLP Migration notes.txt or Eddy for details"

REM #######################################
REM #     RUN OUR INSTALLATION PROGRAM    #
REM #######################################
REM Now we run our installer

REM %INSTALLER_EXE%

REM #############################
REM #     MAKE LOG ENTRY        #
REM #############################
REM Log activity completion
SET LOG_ENTRY="	END	Installation of %PROGRAM_NAME%"
call %RESOURCES_URL%\log_this.bat %0 %LOG_ENTRY% %LOG_URL%
