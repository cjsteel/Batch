
@echo off

REM #############################
REM #	LOGGING OPTION VARIABLE	#
REM #############################
SET LOGGING_ON=YES
REM SET LOGGING_ON=NO

SET CONFIGURATION_URL=..\resources\configure_resource_urls.bat


REM #####################################
REM #	Call our configuration script	#
REM #####################################
IF NOT EXIST %CONFIGURATION_URL% goto ERROR_01
CALL .\resources\configure_resource_urls.bat
GOTO NO_ERROR_01
:ERROR_01
SET ERROR_MESSAGE_01=Missing .\resources\configure_resource_urls.bat
REM #####################
REM #	LOGGING CHECK	#
REM #####################
if "%LOGGING_ON%"=="YES" GOTO MAKE_LOG_ENTRY_01
GOTO MAKE_NO_LOG_ENTRY_01

REM #####################
REM #	MAKE LOG ENTRY	#
REM #####################

:MAKE_LOG_ENTRY_01
echo ##########
echo %ERROR_MESSAGE_01%
echo ##########

:MAKE_NO_LOG_ENTRY_01







:NO_ERROR_01


REM #####################
REM #	LOGGING CHECK	#
REM #####################
if "%LOGGING_ON%"=="YES" GOTO MAKE_LOG_ENTRY_01
GOTO MAKE_NO_LOG_ENTRY_01

REM #####################
REM #	MAKE LOG ENTRY	#
REM #####################

:MAKE_LOG_ENTRY_01
echo ##########
echo LOGGING ENTRY HERE
echo ##########

:MAKE_NO_LOG_ENTRY_01

