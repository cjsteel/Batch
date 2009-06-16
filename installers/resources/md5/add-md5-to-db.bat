md5-to-db.bat

SET TARGET_FILE_URL="C:\Documents and Settings\127247\Desktop\thank you mircea.doc"
SET MD5_DB_URL="C:\Documents and Settings\127247\Desktop\my_db.xml"

REM if single file or directory
REM -wp - do not save file path
REM fciv.exe -add %TARGET_FILE_URL% -wp -xml %MD5_DB_URL%

fciv.exe -add %TARGET_FILE_URL% -xml %MD5_DB_URL%

REM if recursive

REM fciv.exe -add %TARGET_FILE_URL% -r -xml %MD5_DB_URL%