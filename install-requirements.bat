@echo off

:: Check if Python was installed correctly
python --version
if errorlevel 1 (
    echo Python installation failed or is not installed. Please run install-python.bat first or download it manually.
    pause
    exit /b
)

:: Create a virtual environment
cls
echo Creating a virtual environment...
python -m venv venv

:: Activate the virtual environment
call venv\Scripts\activate.bat

:: Upgrade pip
cls
echo Upgrading pip...
python -m pip install --upgrade pip

:: Install required Python libraries
cls
echo Installing requirements...
python -m pip install -r requirements.txt

cls
echo Installation completed successfully. Please run run.bat to proceed.
pause