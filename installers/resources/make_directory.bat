@echo off
REM make_directory.bat
REM #############
REM #	INFO	#
REM #############

REM Author	:	Christopher Steel
REM Date	:	2009-06-112
REM Description	:	Called batch file to create a directory
REM 			Includes basic error and checking
REM			can easily add loging if required

REM #############################
REM #	Calling Parameters	#
REM #############################

REM %0 = calling batch file
REM %1 = Drive
REM %2 = Directory
REM %3 = Unused

REM IF %3 != debug GOTO NO_DEBUG
REM echo debugging mode on
REM :NO_DEBUG


REM #############################
REM #	Check that drive exists	#
REM #############################

IF NOT EXIST %1\NUL GOTO DRIVE_NOT_FOUND
ECHO "Drive %1 Exists"

REM #############################################
REM #	See if directory already exists		#
REM #############################################

IF NOT EXIST %2%3\NUL GOTO CREATE_DIR
echo "Directory Exists"
GOTO EXIT_NOW


REM #############################
REM #	Create our directory	#
REM #############################

:CREATE_DIR
MKDIR %2%3
IF NOT EXIST %2%3\NUL GOTO ERROR_CREATING_DIR
echo "Directory %2%3 created"
GOTO EXIT_NOW

REM #####################################
REM #	Error Creating Directory	#
REM #####################################

:ERROR_CREATING_DIR
echo ""
echo "Unable to create directory %2%3 !!!"
GOTO EXIT_NOW

REM #############################
REM #	Drive Not Found!	#
REM #############################
:DRIVE_NOT_FOUND
echo Drive not found so we where not able create directory:
echo 	%1%2

:EXIT_NOW
