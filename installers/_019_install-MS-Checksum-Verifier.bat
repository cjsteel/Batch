REM echo off
REM DO NOT INCLUDE ANY SPACES IN THE PROGRAM_NAME VARIABLE!!!
SET PROGRAM_NAME=MSFileChecksumIntegrityVerifierWindows-KB841290-x86-ENU
SET INSTALLER_EXE="\\mtl-fp\Data\sys\sw\win\ms_apps\Microsoft File Checksum Integrity Verifier\Windows-KB841290-x86-ENU.exe"
SET RESOURCES_URL=\\mtl-fp\Data\sys\installers\resources
SET LOG_URL="C:\Documents and Settings\%USERNAME%\Desktop\installation-log.txt"
SET TARGET_INSTALL_DIRECTORY="C:\Documents and Settings\%USERNAME%\check_sum"

REM ################################
REM # Created by Christopher Steel #
REM ################################

REM #######################################
REM #     PREOGRAM COMMAND LINE OPTIONS   #
REM #######################################
REM /Q Quiet mode
REM /T:<full path> -- Specifies temporary working folder
REM /C --Extract files only to the folder when used withg /T.
REM /C:<cmd> -- Override install command defined b author (???)

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
echo Installing: %PROGRAM_NAME%
echo TO: %TARGET_INSTALL_DIRECTORY%
%INSTALLER_EXE% /Q /T:%TARGET_INSTALL_DIRECTORY%

REM #############################
REM #     MAKE LOG ENTRY        #
REM #############################
REM Log activity completion
SET LOG_ENTRY="	END	Installation of %PROGRAM_NAME%"
call %RESOURCES_URL%\log_this.bat %0 %LOG_ENTRY% %LOG_URL%

REM #############################
REM #     CHECK EXE MD5SUM      #
REM #############################
%TARGET_INSTALL_DIRECTORY%\fciv.exe -md5 %TARGET_INSTALL_DIRECTORY%\fciv.exe >> %TARGET_INSTALL_DIRECTORY%\md5.txt
type %TARGET_INSTALL_DIRECTORY%\md5.txt
echo should match
echo e2c6d562bd35352b73c00a744e9c07c6



