@echo off

set "FILE_LOG=%~sdp0\history.txt"

del /f /p "%FILE_LOG%"

exit /b 0