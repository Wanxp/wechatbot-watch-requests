@echo off
setlocal

REM Step 2: Set up virtual environment
set VENV_DIR=.\venv

if not exist "%VENV_DIR%" (
    echo Creating venv...
    python -m venv "%VENV_DIR%"
    call "%VENV_DIR%\Scripts\activate"
) else (
    echo venv already exists, skipping...
)

if exist requirements.txt (
    python -m pip install -r requirements.txt
) else (
    echo requirements.txt not found.
)
echo Starting proxy...
start minmpweb --set web_port=18182 listen_port=18181 web_host=0.0.0.0 listen_host=0.0.0.0
echo Starting program...
python main.py

endlocal
