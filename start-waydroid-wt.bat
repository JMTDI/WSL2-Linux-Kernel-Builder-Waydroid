@echo off
REM Start Waydroid session in first tab
start "" wt.exe -w 0 new-tab --title "Waydroid Session" wsl.exe -d Ubuntu-24.04 -- bash -c "waydroid session start; exec bash"

REM Wait for session to initialize
timeout /t 3 /nobreak >nul

REM Start Waydroid UI in second tab
wt.exe -w 0 new-tab --title "Waydroid UI" wsl.exe -d Ubuntu-24.04 -- bash -c "waydroid show-full-ui"