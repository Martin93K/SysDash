#!/bin/bash
clear
echo -e "\e[31mRed Scanner HELP\e[0m"
echo
echo "---------------"
echo -e "\e[34m Local Address:\e[0m"
echo "---------------"
echo "Es el número de puerto TCP en el que el programa está escuchando o enviando datos.

  Puerto | Servicio típico    | Descripción
-----------------------------------------------------------------------------
80 / 443 | HTTP / HTTPS	      | Servidor web
      22 | SSH	              | Conexión remota segura
     135 | RPC (Windows)	  | Comunicación entre servicios del sistema
    3306 | MySQL	          | Base de datos local
    5000 | Personal/API local | Servidor en desarrollo (Flask, Node.js, etc.)
"
echo "-------"
echo -e "\e[34m State: \e[0m"
echo "-------"
echo "
Estado             | Significado    
---------------------------------------------------------------------------------
Listen             | El programa está esperando conexiones.   
Established        | Hay una conexión activa y en uso entre tu PC y otra máquina.	  
TimeWait/CloseWait | Conexiones que se están cerrando o esperando confirmación.           
"
echo "---------------"
echo -e "\e[34m OwningProcess: \e[0m"
echo "---------------"
echo "Es el ID del proceso (PID) que posee esa conexión o puerto.
Desde PowerShell se puede ver el programa con el comando:
"
echo 
echo "Get-Process -Id (idProceso)"

echo 
echo "Presione cualquier tecla para volver..."
read 