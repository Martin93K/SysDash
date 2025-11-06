@echo off
:: === Verificar si se está ejecutando como administrador ===
net session >nul 2>&1
if %errorLevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb runAs"
    exit /b
)
echo ✅ Ejecutando como administrador...

title SysDash 
powershell -command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.SendKeys]::SendWait('{F11}')}" >nul 2>&1
"C:\Program Files\Git\bin\bash.exe" -c "cd "ruta de instalación" && ./menu.sh"
pause
