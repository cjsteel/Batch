REM echo off

REM "Do not included spaces in the program name"
SET PROGRAM_NAME=EDrawings

\\mtl-fp\data\sys\sw\win\apps\solidworks\sp5\en\SolidWorks2007SP5_0\sw2007-31-50-i\sw2007-3.1-5.0-i.msp
\\mtl-fp\data\sys\sw\win\apps\solidworks\sp5\en\SolidWorks2007SP5_0\sw2007-31-50-i\swspmanager.exe


SET ARCHIVE_NAME=eDrawingsAllFull.7z
SET REMOTE_RESOURCE_DIR=\\mtl-fp\data\sys\sw\win\apps\solidworks\sp5\en\SolidWorks2007SP5_0
SET REMOTE_ARCHIVE=%REMOTE_RESOURCE_DIR%\%ARCHIVE_NAME%

SET LOCAL_RESOURCE_DIR=c:\Data\sys\sw\solidworks\sp5\en
SET LOCAL_ARCHIVE=%LOCAL_RESOURCE_DIR%\%ARCHIVE_NAME%
SET INSTALLER_EXE=%LOCAL_RESOURCE_DIR%\eDrawingsAllFull\setup.exe

SET ARCHIVER_URL=C:\Program Files\7-Zip\7z

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

mkdir %LOCAL_RESOURCE_DIR%

REM #######################################
REM #     COPY ANY FILES REQUIRED         #
REM #######################################

C:
cd %LOCAL_RESOURCE_DIR%
copy %REMOTE_ARCHIVE% *

REM #######################################
REM #     Unarchive our installation      #
REM #######################################
REM Now we unzip our installer package
"%ARCHIVER_URL%" x %LOCAL_ARCHIVE%



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



