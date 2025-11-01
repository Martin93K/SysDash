#!/bin/bash
clear

chmod +x red_scanner.sh

echo "🌐 ESCANEO DE RED LOCAL"
echo "------------------------"

echo "Buscando dispositivos activos en la red..."

# Extraer IPv4 real de ipconfig
ip_base=$(ipconfig | grep -Eo "([0-9]{1,3}\.){3}[0-9]{1,3}" | grep -vE "127\.|255\." | head -n 1)
ip_base=${ip_base%.*}

if [[ -z "$ip_base" ]]; then
    echo "❌ No se pudo detectar la IP base. Verifica que estés conectado a una red."
    exit 1
fi

echo "Red detectada: ${ip_base}.0/24"
echo "Escaneando dispositivos activos..."
echo

for i in {1..254}; do
    ip="$ip_base.$i"
    if ping -n 1 -w 200 "$ip" > /dev/null 2>&1; then
        nombre=$(ping -a -n 1 "$ip" 2>/dev/null | grep -oP '(?<=Pinging ).*?(?= \[)' | head -n 1)
        echo "🟢 Activo: $ip (${nombre:-Desconocido})"
    fi &
done
wait
echo

echo "============================"

echo "🔌 MONITOREO DE PUERTOS"
echo "------------------------"

echo "📊 Puertos abiertos en Windows:"
echo
powershell.exe -NoProfile -Command "
Get-NetTCPConnection |
    Select-Object LocalAddress, LocalPort, State, OwningProcess |
    Sort-Object LocalPort |
    Format-Table -AutoSize
"
echo
echo "✅ Escaneo completado."


echo 
echo "Presione cualquier tecla para volver..."
read 