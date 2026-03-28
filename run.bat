@echo off
setlocal EnableExtensions
TITLE VeloxIR DFIR - Native Launcher
COLOR 0A

echo [0] check Admin privileges...
net session >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    COLOR 0C
    echo [!] FATAL: Framework needs Admin privileges!
    echo [!] right click on run.bat -^> "run as administrator".
    pause
    exit /b
)

echo [1] check installation...
IF NOT EXIST "venv\Scripts\python.exe" (
    COLOR 0C
    echo [!] FATAL: the virtual Python-Enviroment can't be found.
    echo [!] Run first 'setup.ps1' !!!.
    pause
    exit /b
)

IF NOT EXIST "chainsaw\chainsaw.exe" (
    COLOR 0C
    echo [!] FATAL: Chainsaw is missing.
    echo [!] The setup isn't completed or was performed incorrectly.
    pause
    exit /b
)

:: Volatility Offline-Cache path
set VOLATILITY_SYMBOL_PATH=%CD%\data\symbols

echo [2] Start DFIR Framework...
venv\Scripts\python.exe -m streamlit run app.py

pause
