@echo off
rem findash installer for Windows: creates a private Python environment, installs findash, then walks you through activation + setup.
cd /d "%~dp0"
where python >nul 2>&1 || (echo Python 3.9 or newer is required: https://www.python.org/downloads/  ^(tick "Add python.exe to PATH"^) & pause & exit /b 1)
echo Installing findash (one-time) ...
python -m venv .venv || (pause & exit /b 1)
call .venv\Scripts\activate.bat
python -m pip install --quiet --upgrade pip
python -m pip install --quiet . || (pause & exit /b 1)
echo.
echo Step 1/2 - licence key (findash only runs with a key from its owner).
findash activate
echo.
echo Step 2/2 - setup (folder, profile, AI provider).
findash setup
echo.
echo Done. Run it any time by double-clicking run_findash.bat
pause
