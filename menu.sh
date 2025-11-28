#!/bin/bash

menu(){
    while true; do
        clear
        echo -e "\e[34m
             ____  __   __  ____    ____      _      ____    _   _ 
            / ___| \ \ / / / ___|  |  _ \    / \    / ___|  | | | |
            \___ \  \ V /  \___ \  | | | |  / _ \   \___ \  | |_| |
             ___) |  | |    ___) | | |_| | / ___ \   ___) | |  _  |
            |____/   |_|   |____/  |____/ /_/   \_\ |____/  |_| |_|  
                      Developed By Martín Kachechca \e[0m"
        echo ""
        echo -e "\e[34m======== MENU ========\e[0m"
        echo "1. Download Organizer"
        echo "2. RAM Usage"
        echo "3. DISK Usage"
        echo "4. Red Scanner"
        echo "5. Ayuda"
        echo "0. Salir"
        echo -e "\e[34m======================\e[0m"
        echo ""
        read -p "Selecciona una opción: " option

        case $option in
        1) bash download_Organizer.sh ;; 
        2) bash ram_usage.sh ;; 
        3) bash disk_usage.sh ;;
        4) bash red_scanner.sh ;;
        5) bash help.sh ;;
        0) echo " "
            echo "Saliendo..."
            sleep 1.5
            clear
            break;; 
        *) 
        echo "Opción no Válida"
        sleep 1 ;;
        esac
    done
}
menu