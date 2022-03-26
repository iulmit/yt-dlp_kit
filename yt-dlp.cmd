@echo off
SETLOCAL ENABLEDELAYEDEXPANSION ENABLEEXTENSIONS
chcp 65001 1>nul 2>nul

::-----------------------------------------------this directory (8.3 name) no '\' suffix.
set "STARTING_FOLDER=%~sdp0"
set "STARTING_FOLDER=%STARTING_FOLDER%##"
set "STARTING_FOLDER=%STARTING_FOLDER:\##=%"
set "STARTING_FOLDER=%STARTING_FOLDER:##=%"
::-----------------------------------------------------------------------------------------------

::------------------------------------------------------------ work-around the CMD working-folder bug.
echo."%CD%" | findstr /I /C:"Windows\Sys" 1>nul 2>nul
if ["%ErrorLevel%"] EQU ["0"] ( pushd "%STARTING_FOLDER%" )
::-----------------------------------------------------------------------------------------------

::----------------------------------------------------------------------- first items in PATH are prefered.
set "TMP_PATH=%STARTING_FOLDER%\resources"
set "TMP_PATH=%TMP_PATH%;%STARTING_FOLDER%\resources\aria2c"
set "TMP_PATH=%TMP_PATH%;%STARTING_FOLDER%\resources\atomicparsley"
set "TMP_PATH=%TMP_PATH%;%STARTING_FOLDER%\resources\curl"
set "TMP_PATH=%TMP_PATH%;%STARTING_FOLDER%\resources\ffmpeg"
set "TMP_PATH=%TMP_PATH%;%STARTING_FOLDER%\resources\gnucoreutils"
set "TMP_PATH=%TMP_PATH%;%STARTING_FOLDER%\resources\inputbox"
set "TMP_PATH=%TMP_PATH%;%STARTING_FOLDER%\resources\nodejs"
set "TMP_PATH=%TMP_PATH%;%STARTING_FOLDER%\resources\phantomjs"
set "TMP_PATH=%TMP_PATH%;%STARTING_FOLDER%\resources\rtmpdump"
set "TMP_PATH=%TMP_PATH%;%STARTING_FOLDER%\resources\wget"
::----------------------------------------------------------------------- python folder

::set "TMP_PATH=%TMP_PATH%;%STARTING_FOLDER%\resources\WPy32"
set "TMP_PATH=%TMP_PATH%;%STARTING_FOLDER%\resources\WPy32\python-3.10.2\Lib\site-packages\PyQt5"
set "TMP_PATH=%TMP_PATH%;%STARTING_FOLDER%\resources\WPy32\python-3.10.2\Lib\site-packages\PySide2"
set "TMP_PATH=%TMP_PATH%;%STARTING_FOLDER%\resources\WPy32\python-3.10.2"
set "TMP_PATH=%TMP_PATH%;%STARTING_FOLDER%\resources\WPy32\python-3.10.2\DLLs"
set "TMP_PATH=%TMP_PATH%;%STARTING_FOLDER%\resources\WPy32\python-3.10.2\Scripts"
set "TMP_PATH=%TMP_PATH%;%STARTING_FOLDER%\resources\WPy32\t"
::set "TMP_PATH=%TMP_PATH%;%STARTING_FOLDER%\resources\WPy32\t\mingw32\bin"
::set "TMP_PATH=%TMP_PATH%;%STARTING_FOLDER%\resources\WPy32\t\R\bin\i386"
set "TMP_PATH=%TMP_PATH%;%STARTING_FOLDER%\resources\WPy32\t\Julia\bin"
set "TMP_PATH=%TMP_PATH%;%STARTING_FOLDER%\resources\WPy32\n"
::set "TMP_PATH=%TMP_PATH%;%STARTING_FOLDER%\resources\WPy32\python-3.10.2\Lib\site-packages\yt_dlp"
set "PATH=%TMP_PATH%;%PATH%"
set "TMP_PATH="


::----------------------------------------------------------------------- variables that needed for WinPython.

set "CommonProgramFiles=C:\Program Files (x86)\Common Files"
set "FINDDIR=C:\Windows\system32"
set "PROCESSOR_ARCHITECTURE=x86"
set "PROCESSOR_ARCHITEW6432=AMD64"
set "ProgramFiles=C:\Program Files (x86)"

set "HOME=%STARTING_FOLDER%\resources\WPy32\settings"
set "JUPYTER_CONFIG_DIR=%STARTING_FOLDER%\resources\WPy32\python-3.10.2\etc\jupyter"
set "JUPYTER_CONFIG_PATH=%STARTING_FOLDER%\resources\WPy32\python-3.10.2\etc\jupyter"
set "JUPYTER_DATA_DIR=%STARTING_FOLDER%\resources\WPy32\settings"



set "PYTHON=%STARTING_FOLDER%\resources\WPy32\python-3.10.2\python.exe"
set "tmp_pyz=%STARTING_FOLDER%\resources\WPy32\python-3.10.2\Lib\site-packages\pyqt5_tools"
set "WINPYARCH=WIN32"
set "WINPYDEBUG=disabled"
set "WINPYDIR=%STARTING_FOLDER%\resources\WPy32\python-3.10.2"
set "WINPYDIRBASE=%STARTING_FOLDER%\resources\WPy32"
set "winpython_ini=%STARTING_FOLDER%\resources\WPy32\settings\winpython.ini"
set "WINPYVER=3.10.2.0dot"
set "WINPYWORKDIR=%STARTING_FOLDER%\resources\WPy32\Notebooks"
set "WINPYWORKDIR1=%STARTING_FOLDER%\resources\WPy32\Notebooks"

::----------------------------------------------------------------------- not needed, but might be useful.
set "TEMP=%STARTING_FOLDER%\resources\TEMP"
set "TMP=%STARTING_FOLDER%\resources\TEMP"

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


::exe                         "%STARTING_FOLDER%\resources\WPy32\python-3.10.2\Scripts\yt-dlp.exe"
::python (main)               "%STARTING_FOLDER%\resources\WPy32\python-3.10.2\python.exe" "%STARTING_FOLDER%\resources\WPy32\python-3.10.2\Lib\site-packages\yt_dlp\__main__.py"
::python (implicit main/init) "%STARTING_FOLDER%\resources\WPy32\python-3.10.2\python.exe" "%STARTING_FOLDER%\resources\WPy32\python-3.10.2\Lib\site-packages\yt_dlp"


@echo on
call "%STARTING_FOLDER%\resources\WPy32\python-3.10.2\python.exe" "%STARTING_FOLDER%\resources\WPy32\python-3.10.2\Lib\site-packages\yt_dlp" %*
set "EXIT_CODE=%ErrorLevel%"
@echo off

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

ENDLOCAL

::pause
exit /b %EXIT_CODE%
