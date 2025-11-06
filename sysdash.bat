@echo off
:: === Verificar si se está ejecutando como administrador ===
net session >nul 2>&1
if %errorLevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb runAs"
    exit /b
)
echo Ejecutando como administrador...

title SysDash 
"C:\Program Files\Git\bin\bash.exe" -c "cd "ruta de instalación" && ./menu.sh"
pause
