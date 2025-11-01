# ⚙️ SysDash

**SysDash** es un panel de automatización y monitoreo de sistema escrito en **Bash**.
Permite consultar el uso de memoria RAM, disco, red y puertos, además de ejecutar scripts personalizados desde un menú interactivo.

---

## Tabla de Contenidos
- [Características](#características)
- [Estructura del Proyecto](#estructura-del-proyecto)
- [Instalación](#️-instalación)
- [Menú Principal](#menú-principal)
- [Scripts Incluidos](#scripts-incluidos)
- [Requisitos](#requisitos)
- [Personalización](#personalización)
- [Licencia](#licencia)
- [Autor](#-autor)




## Características

* 📊 Monitoreo de **uso de RAM** y procesos más activos.
* 💾 Información detallada del **uso en disco** por carpeta.
* 🌐 Escaneo de red local para detectar **dispositivos conectados**.
* 🔌 Monitoreo de **puertos abiertos** y procesos asociados.
* 🖥️ Compatible con **Linux** y **Windows (Git Bash / WSL)**.

---

## Estructura del proyecto

```
SysDash/
├── menu.sh
├── ram_usage.sh
├── disk_usage.sh
├── network_scan.sh
├── port_monitor.sh
└── README.md
```

---

## ⚙️ Instalación

### 🔹 Clonar el repositorio

```bash
git clone https://github.com/tu-usuario/SysDash.git
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

| Script            | Descripción                                                        |
| ----------------- | ------------------------------------------------------------------ |
| `menu.sh`         | Panel principal para ejecutar todas las funciones.                 |
| `ram_usage.sh`    | Muestra la memoria libre, total y los 5 procesos que más consumen. |
| `disk_usage.sh`   | Informa el uso de disco total y las carpetas más grandes en MB.    |
| `network_scan.sh` | Escanea la red local, los puertos abiertos y los procesos que los utilizan.   |

---

## Requisitos

* **Linux:** Bash 4+, `ss`, `df`, `du`, `awk`, `grep`, `sort`
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

## 👤 Autor

**Desarrollado por:** [Martin Kachechca](https://github.com/Martin93K)
