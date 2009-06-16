

RESOURCES_URL=C:\Documents and Settings\Christopher Steel\workspace\Batch\installers\resources
INSTALLERS_URL=C:\Documents and Settings\Christopher Steel\workspace\Batch\installers
echo "Exiting %0"

SET LOG_ENTRY="START DEBUGGING FOR %0"
call %RESOURCES_URL%\log_this.bat %0 %LOG_ENTRY% %LOG_URL%



SET LOG_ENTRY="END DEBUGGING FOR %0"
call %RESOURCES_URL%\log_this.bat %0 %LOG_ENTRY% %LOG_URL%

