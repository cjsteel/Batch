

REM echo off
SET INSTALLER_EXE="C:\Program Files\7-Zip\7z" x qd550w430a2kus.zip

REM IS WORD WRAP OFF????

REM DO NOT INCLUDE ANY SPACES IN THE PROGRAM_NAME VARIABLE!!!
SET PROGRAM_NAME=Brother_QL_550
SET RESOURCES_URL=\\mtl-fp\Data\sys\installers\resources
SET LOG_URL="C:\Documents and Settings\%USERNAME%\Desktop\installation-log.txt"

REM OPTIONAL
SET LOCAL_TARGET_DIRECTORY=c:\brother\ql550\driver


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

mkdir %LOCAL_TARGET_DIRECTORY%

REM #######################################
REM #     COPY ANY FILES REQUIRED         #
REM #######################################

C:
cd %LOCAL_TARGET_DIRECTORY%
copy "\\mtl-fp\Data\sys\hw\printers\brother\ql-550\printer driver\qd550w430a2kus.zip" *
REM #######################################
REM #     RUN OUR INSTALLATION PROGRAM    #
REM #######################################
REM Now we run our installer

"C:\Program Files\7-Zip\7z" x qd550w430a2kus.zip
echo "drivers installed to c:\brother\ql550\driver"
C:\brother\ql550\driver\qd550w430a2kus\D_SETUP.EXE

REM #############################
REM #     MAKE LOG ENTRY        #
REM #############################
REM Log activity completion
SET LOG_ENTRY="	END	Installation of %PROGRAM_NAME%"
call %RESOURCES_URL%\log_this.bat %0 %LOG_ENTRY% %LOG_URL%
