REM echo off
REM DO NOT INCLUDE ANY SPACES IN THE PROGRAM_NAME VARIABLE!!!
SET PROGRAM_NAME=Symantec_AntiVirus_10.1.5.5000
SET INSTALLER_EXE="\\mtl-fp\VPHOME\CLT-INST\WIN32\setup.exe"
SET RESOURCES_URL="C:\Documents and Settings\Christopher Steel\workspace\Batch\installers\resources"
SET CONFIGURE_URL="C:\Documents and Settings\Christopher Steel\workspace\Batch\installers\resources\configure.bat"
call %CONFIGURE_URL%
SET LOG_URL="C:\Documents and Settings\%USERNAME%\Desktop\installation-log.txt"
TYPE TEST1.BAT
echo %TEST%
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

REM #######################################
REM #     RUN OUR INSTALLATION PROGRAM    #
REM #######################################
REM Now we run our installer

REM %INSTALLER_EXE%

REM #############################
REM #     MAKE LOG ENTRY        #
REM #############################
REM Log activity completion
REM SET LOG_ENTRY="	END	Installation of %PROGRAM_NAME%"
REM call %RESOURCES_URL%\log_this.bat %0 %LOG_ENTRY% %LOG_URL%



