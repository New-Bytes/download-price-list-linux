#!/bin/bash

# Ruta al directorio de los scripts de descarga
script_path="$(dirname "$0")"

# Preguntar el formato deseado
read -p "¿Qué formato deseas descargar? (csv/xlsx): " format

# Comando de descarga según el formato elegido
if [ "$format" = "csv" ]; then
    download_command="$script_path/download_csv.sh"
elif [ "$format" = "xlsx" ]; then
    download_command="$script_path/download_xlsx.sh"
else
    echo "Formato no válido. Por favor, elige 'csv' o 'xlsx'."
    exit 1
fi

# Preguntar la frecuencia en minutos
read -p "Ingresa la frecuencia de la tarea (en minutos): " frequency_in_minutes

# Validar la entrada
if [ "$frequency_in_minutes" -le 0 ]; then
    echo "Frecuencia no válida. Debe ser un número entero positivo."
    exit 1
fi

# Calcular la frecuencia de crontab
cron_frequency="*/$frequency_in_minutes * * * *"

# Agregar a crontab
(crontab -l 2>/dev/null; echo "$cron_frequency $download_command") | crontab -

echo "Tarea programada en crontab para ejecutarse cada $frequency_in_minutes minutos en formato $format."
