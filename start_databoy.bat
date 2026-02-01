@echo off
cd /d "%~dp0"
start "" python -m http.server 8000 --bind 127.0.0.1
timeout /t 1 >nul
start "" http://127.0.0.1:8000/DATA-VAULT-87-WEB.html
