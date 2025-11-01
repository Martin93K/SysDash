#!/bin/bash
clear

echo "💾 USO DEL DISCO"
echo "------------------"

# Información general del disco
powershell.exe -NoProfile -Command "
Get-PSDrive -PSProvider 'FileSystem' |
  Select-Object Name, @{Name='Total(GB)';Expression={[math]::Round(\$_.Used/1GB + \$_.Free/1GB,2)}},
                        @{Name='Usado(GB)';Expression={[math]::Round(\$_.Used/1GB,2)}},
                        @{Name='Libre(GB)';Expression={[math]::Round(\$_.Free/1GB,2)}},
                        @{Name='Uso(%)';Expression={[math]::Round((\$_.Used/(\$_.Used+\$_.Free))*100,1)}} |
  Format-Table -AutoSize
"

echo
echo "📁 Carpetas más grandes en la ruta actual:"
echo "-----------------------------------------"
du -m --max-depth=1 2>/dev/null | sort -nr | head -n 6 | awk '{printf "%-40s %10s MB\n",$2,$1}'
echo " "
echo "Presione cualquier tecla para volver..."
read volver