#!/bin/bash
clear
ruta_actual=$(pwd)
if [[ ! -d "logs" ]]; then
    mkdir "$ruta_actual/logs"
fi
touch "$ruta_actual/logs/Log_FILE.log"
LOG_FILE="$ruta_actual/logs/Log_FILE.log"
ruta_downloads="/c/Users/Asus/Downloads"
INTERVALO_MINUTOS=1
INTERVALO_SEGUNDOS=$((INTERVALO_MINUTOS * 60))
echo "$(date): Iniciando organización de descargas" >> "$LOG_FILE"
echo "🔁 Ejecutando cada $INTERVALO_MINUTOS minutos..." >> "$LOG_FILE"
echo "$(date): Iniciando organización de descargas"

echo "=== $(date) - Ejecutando organización..." >> "$LOG_FILE"
# Definir categorías y extensiones
declare -A categorias=(
    ["Documentos"]="pdf docx txt xlsx pptx odt"
    ["Imágenes"]="jpg jpeg png gif bmp svg"
    ["Videos"]="mp4 avi mov mkv wmv"
    ["Audio"]="mp3 wav flac ogg m4a"
    ["Comprimidos"]="zip rar tar gz 7z"
    ["Programas"]="exe deb dmg apk appimage"
    ["Otros"]="iso msi"
)

for archivo in "$ruta_downloads"/*; do
    if [ -f "$archivo" ]; then
        extension="${archivo##*.}"
        extension="${extension,,}"  # Convertir a minúsculas
        
        case "$extension" in
            pdf|docx|txt|xlsx|pptx|odt) carpeta="Documentos" ;;
            jpg|jpeg|png|gif|bmp|svg) carpeta="Imágenes" ;;
            mp4|avi|mov|mkv|wmv) carpeta="Videos" ;;
            mp3|wav|flac|ogg|m4a) carpeta="Audio" ;;
            zip|rar|tar|gz|7z) carpeta="Comprimidos" ;;
            exe|deb|dmg|apk|appimage) carpeta="Programas" ;;
            iso|msi) carpeta="Otros" ;; 
            *) carpeta="" ;;
        esac
        
        if [ -n "$carpeta" ]; then
            carpeta_completa="$ruta_downloads/$carpeta"
            
            # Crear carpeta solo si no existe
            [ ! -d "$carpeta_completa" ] && mkdir -p "$carpeta_completa"
            
            # Mover archivo
            mv "$archivo" "$carpeta_completa/"
            echo "📄 Movido: $(basename "$archivo") -> $carpeta/"
        fi
    fi
done
echo "⏰ Esperando $INTERVALO_MINUTOS minutos..." >> "$LOG_FILE"
echo "$(date): Organización completada" >> "$LOG_FILE"
echo " ==================================================================" >> "$LOG_FILE"
echo "Organizando..."
sleep 2
echo "$(date): ✅ Organización completada" 
echo " "
echo "Presione cualquier tecla para volver..."
read volver