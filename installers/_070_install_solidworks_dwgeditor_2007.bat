REM echo off

\\mtl-fp\data\sys\sw\win\apps\solidworks\sp5\en\SolidWorks2007SP5_0\swexplorer\setup



REM "Do not included spaces in the program name"
SET PROGRAM_NAME=Solid_Works_Explorer


SET REMOTE_INSTALLER_PROGRAM=dwgeditor.exe

SET REMOTE_RESOURCE_DIR=\\mtl-fp\data\sys\sw\win\apps\solidworks\sp5\en\SolidWorks2007SP5_0

SET REMOTE_INSTALLER=%REMOTE_RESOURCE_DIR%\%REMOTE_INSTALLER_PROGRAM%

REM CHAnge following to reflect program

SET INSTALLER_EXE=%REMOTE_RESOURCE_DIR%\%REMOTE_INSTALLER_PROGRAM%

REM "Do not change the following"
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

REM mkdir %LOCAL_RESOURCE_DIR%

REM #######################################
REM #     COPY ANY FILES REQUIRED         #
REM #######################################

REM C:
REM cd %LOCAL_RESOURCE_DIR%
REM copy %REMOTE_ARCHIVE% *

REM #######################################
REM #     Unarchive our installation      #
REM #######################################
REM Now we unzip our installer package
REM "%ARCHIVER_URL%" x %LOCAL_ARCHIVE%



REM #######################################
REM #     RUN OUR INSTALLATION PROGRAM    #
REM #######################################
REM Now we run our installer
echo "Running %INSTALLER_EXE%"
%INSTALLER_EXE%

REM #############################
REM #     MAKE LOG ENTRY        #
REM #############################
REM Log activity completion
SET LOG_ENTRY="	END	Installation of %PROGRAM_NAME%"
call %RESOURCES_URL%\log_this.bat %0 %LOG_ENTRY% %LOG_URL%


pause



