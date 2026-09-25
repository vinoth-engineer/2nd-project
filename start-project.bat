@echo off
title Idempotent Payment Gateway - Starter
echo ========================================================
echo  Starting Idempotent Payment Gateway (Full Stack)
echo ========================================================
echo.

echo [1/2] Starting Backend API Server (Port 4000)...
start "Payment Gateway Backend" cmd /k "cd /d %~dp0backend && npm run dev"

timeout /t 3 /nobreak >nul

echo [2/2] Starting Frontend UI Server (Port 5173)...
start "Payment Gateway Frontend" cmd /k "cd /d %~dp0frontend && npm run dev"

echo.
echo ========================================================
echo  All systems booting!
echo  Opening browser at http://localhost:5173 ...
echo ========================================================
timeout /t 3 /nobreak >nul
start http://localhost:5173
