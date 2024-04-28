@echo off
setlocal

:: Check if Python is already installed by checking the version
python --version >nul 2>&1
if not errorlevel 1 (
    cls
    echo Python is already installed. Please run install-requirements.bat to proceed.
    pause
    exit
)

:: Set the URL for the Python download
set PYTHON_URL=https://www.python.org/ftp/python/3.10.11/python-3.10.11-amd64.exe

:: Set the installation file name
set INSTALLER_FILE=%TEMP%\python_installer.exe

:: Download the Python installer
echo Downloading Python...
powershell -Command "Invoke-WebRequest -Uri "%PYTHON_URL%" -OutFile "%INSTALLER_FILE%""

:: Install Python
cls
echo Installing Python...
start /wait "" %INSTALLER_FILE% /quiet InstallAllUsers=1 PrependPath=1

:: Clean up installation files
del %INSTALLER_FILE%

cls
echo Python was installed successfully. Please run install-requirements.bat to proceed.
pause