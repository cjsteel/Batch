md5-to-db.bat

SET TARGET_FILE_URL="C:\Documents and Settings\127247\Desktop\thank you mircea.doc"
SET MD5_DB_URL="C:\Documents and Settings\127247\Desktop\my_db.xml"

REM if single file or directory
REM 
fciv %TARGET_FILE_URL% -v -XML %MD5_DB_URL%