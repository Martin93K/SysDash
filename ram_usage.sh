#!/bin/bash
clear

chmod +x ram_usage.sh

echo "📊 Memoria RAM actual:"
echo "------------------------"
powershell.exe -NoProfile -Command "
\$os = Get-CimInstance Win32_OperatingSystem;
\$total = [math]::Round(\$os.TotalVisibleMemorySize/1MB,2);
\$free  = [math]::Round(\$os.FreePhysicalMemory/1MB,2);
\$used  = [math]::Round(\$total - \$free,2);
Write-Output ('Total:  ' + \$total + ' GB');
Write-Output ('Usada:  ' + \$used + ' GB');
Write-Output ('Libre:  ' + \$free  + ' GB');
"

echo
echo "Uso detallado por proceso (5):"
echo "-----------------------------------"
powershell.exe -NoProfile -Command "
Get-Process | Sort-Object -Property WorkingSet -Descending | Select-Object -First 5 @{n='PID';e={\$_.Id}}, @{n='Proceso';e={\$_.ProcessName}}, @{n='RAM(MB)';e={[math]::Round(\$_.WorkingSet/1MB,1)}} | Format-Table -AutoSize
"
echo 
echo "Presione cualquier tecla para volver..."
read