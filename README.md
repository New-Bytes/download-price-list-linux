# Descargador Automático de XLSX

Este script de Bash está diseñado para descargar automáticamente un archivo XLSX de una URL específica y, opcionalmente, programar descargas regulares usando `crontab`.

## Requisitos

- Bash
- Curl
- Acceso a `crontab` (para la programación automática)

## Configuración

1. **Descargar el script**: Primero, descarga o clona este repositorio en tu sistema local.

2. **Permiso de Ejecución**: Asegúrate de que el script tenga permiso de ejecución. Puedes asignar permisos de ejecución con el siguiente comando:

   ```bash
   chmod +x download_xlsx.sh
