# Descargador Automático de Listado de precios

Este conjunto de scripts de Bash permite la descarga automática de archivos en formato XLSX o CSV desde una URL específica. Además, ofrece la capacidad de programar descargas regulares utilizando `crontab`.

## Requisitos

- Bash
- Curl
- Acceso a `crontab` (para la programación automática)

## Archivos en el Repositorio

- `download_xlsx.sh`: Descarga un archivo en formato XLSX.
- `download_csv.sh`: Descarga un archivo en formato CSV.
- `schedule_download.sh`: Programa descargas automáticas mediante `crontab`.

## Configuración

1. **Descargar los scripts**: Descarga o clona este repositorio en tu sistema local.

2. **Permiso de Ejecución**: Asegúrate de que todos los scripts tengan permiso de ejecución. Puedes asignar permisos de ejecución con el siguiente comando:

   ```bash
   chmod +x download_xlsx.sh download_csv.sh schedule_download.sh

## Personalización de los Scripts de Descarga

**Edita download_xlsx.sh y download_csv.sh para configurar las siguientes variables según tus necesidades:**

1. **token:**  El token para acceder a la URL del archivo.
2. **download_path:** La ruta donde deseas guardar el archivo descargado.
1. **output:** El nombre del archivo de salida.

## Configuración del Script de Programación (schedule_download.sh)
Este script utiliza la variable script_path para determinar la ruta de los scripts de descarga. Asegúrate de que download_csv.sh y download_xlsx.sh estén en el mismo directorio que schedule_download.sh, o ajusta la variable script_path según sea necesario.

## Uso
**Descarga Inmediata**
Para realizar una descarga inmediata del archivo en el formato deseado, ejecuta uno de los siguientes comandos:

**Para XLSX:**
```bash
./download_xlsx.sh
```
**Para CSV:**
```bash
./download_csv.sh
```

### Programación de Descargas Automáticas
Para configurar la tarea en crontab:

Ejecuta `schedule_download.sh`. Este script te preguntará:

El formato de archivo que deseas descargar (XLSX o CSV).
La frecuencia con la que deseas que se ejecute la tarea (en minutos).
bash
```bash
./schedule_download.sh
```
Responde a las preguntas en el script para programar la tarea en crontab.

## Programación con Crontab
Si eliges agregar la tarea a crontab, el script programará automáticamente la tarea para que se ejecute a la frecuencia especificada.

## Soporte
Para obtener ayuda o informar problemas, por favor abre un 'issue' en el repositorio de GitHub donde se aloja este script.

