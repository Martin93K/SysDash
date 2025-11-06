# ⚙️ SysDash

**SysDash** es un panel de automatización y monitoreo de sistema para **Windows** escrito en **Bash**.
Permite consultar el uso de memoria RAM, disco, red y puertos, además de ejecutar scripts personalizados desde un menú interactivo.

---

## Tabla de Contenidos
- [Características](#características)
- [Estructura del Proyecto](#estructura-del-proyecto)
- [Instalación](#instalación)
- [Menú Principal](#menú-principal)
- [Scripts Incluidos](#scripts-incluidos)
- [Requisitos](#requisitos)
- [Personalización](#personalización)
- [Licencia](#licencia)
- [Autor](#autor)

## Características

* 📊 Monitoreo de **uso de RAM** y procesos más activos.
* 💾 Información detallada del **uso en disco** por carpeta.
* 🌐 Escaneo de red local para detectar **dispositivos conectados**.
* 🔌 Monitoreo de **puertos abiertos** y procesos asociados.
* 🖥️ Compatible con **Windows (Git Bash / WSL)**.

---

## Estructura del proyecto

```
SysDash/
├── menu.sh
├── ram_usage.sh
├── disk_usage.sh
├── red_scanner.sh
├── help.sh
├── download_organizer.sh
├── LICENSE
└── README.md
```
Al ejecutar el script ` download_organizer.sh ` se crea una carpeta ` logs ` y dentro un archivo ` Log_FILE.log ` en el que se guarda la información sobre la ejecución del script.

---

## Instalación

### 🔹 Clonar el repositorio

```bash
git clone https://github.com/Martin93K/SysDash.git
cd SysDash
```

### 🔹 Dar permisos de ejecución

```bash
chmod +x *.sh
```

### 🔹 Ejecutar el menú principal

```bash
./menu.sh
```
### Opcional

Puedes agregar sysdash al path de windows para poder ejecutarlo directamente con el comando: `windows + r` escribiendo `sysdash`

#### Pasos:

- Abrir el archivo `sysdash.bat`

- Reemplazar en la línea `12` "ruta de instalación" (sin comillas) por la ruta donde se clonó este repositorio (no incluir el archivo menu.sh en la ruta). 

   - **Ej:** Si la ruta es: `C:\Users\user\SysDash`, la línea **12** quedaría: 
   `"C:\Program Files\Git\bin\bash.exe" -c "cd C:\Users\user\SysDash && ./menu.sh"`

- Copiar el archivo `sysdash.bat` y pegarlo en la ruta: `C:\Windows\`

Una vez hecho esto al presionar `windows + r` y escribir `sysdash` se pedirán permisos de administrador y se abrirá la consola CMD con el menu.sh.


---

## Menú principal

Ejemplo de salida del menú:

```
===== SYS DASH =====
1. Download Organizer
2. RAM Usage
3. DISK Usage
4. Network Scan
5. Port Monitor
0. Salir
====================
Selecciona una opción:
```

---

## Scripts incluidos

| Script                   | Descripción                                                        |
| ------------------------ | ------------------------------------------------------------------ |
| `menu.sh`                | Panel principal para ejecutar todas las funciones.                 |
| `ram_usage.sh`           | Muestra la memoria libre, total y los 5 procesos que más consumen. |
| `disk_usage.sh`          | Informa el uso de disco total y las carpetas más grandes en MB.    |
| `red_scanner.sh`         | Escanea la red local, los puertos abiertos y los procesos que los utilizan. |
| `download_organizer.sh`  | Organizador de descargas en: Documentos, Imágenes, Videos, Audio, Comprimidos, Programas, Otros. |
| `help.sh`                | Ayudas sobre salidas de scripts e interpretación de datos. |

---

## Requisitos

* **Windows:** [Git Bash](https://gitforwindows.org/) o [WSL](https://learn.microsoft.com/windows/wsl/), con PowerShell habilitado

---

## Personalización

Podés agregar tus propios scripts:

1. Creá un nuevo archivo `.sh`
2. Agregalo al `menu.sh` con una opción nueva:

   ```bash
   6) bash tu_script.sh ;;
   ```

---

## Licencia

Este proyecto está disponible bajo la [Licencia MIT](./SysDash/LICENSE).

---

## Autor

**Desarrollado por:** [Martin Kachechca](https://github.com/Martin93K)
