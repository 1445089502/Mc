@ECHO OFF
CD /D %~dp0
SETLOCAL

:start
CLS
java @args/user.txt @args/win.txt @args/jar.txt nogui

ECHO.
ECHO -----------------------------------------
ECHO Type R to restart or Q to quit.
CHOICE /C RQ /N /T 10 /D R
IF %ERRORLEVEL%==1 GOTO :start
