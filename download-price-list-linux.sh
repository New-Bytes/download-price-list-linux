#!/bin/bash

# Token para la URL
token="d305f705cd58888be3c78bdb7c0962"

# URL del archivo XLSX
url="http://gamma.api.nb.com.ar/v1/priceListExcel/$token"

# Ruta de descarga
download_path="/tu/ruta/deseada"

# Nombre del archivo de salida
output="downloaded_file.xlsx"

# Crear la ruta de descarga si no existe
mkdir -p "$download_path"

# Descargar el archivo
curl --location "$url" -o "$download_path/$output"

echo "Descarga completada: $download_path/$output"

# Preguntar si agregar a crontab
read -p "¿Deseas agregar esta tarea a crontab? (si/no): " add_to_crontab

if [ "$add_to_crontab" = "si" ]; then
    # Preguntar la frecuencia
    echo "Indica la frecuencia de la tarea:"
    echo "  * Para cada minuto: * * * * *"
    echo "  * Para cada hora: 0 * * * *"
    echo "  * Para todos los días a medianoche: 0 0 * * *"
    read -p "Escribe la frecuencia de crontab: " cron_frequency

    # Comando completo
    full_command="curl --location '$url' -o '$download_path/$output'"

    # Agregar a crontab
    (crontab -l 2>/dev/null; echo "$cron_frequency $full_command") | crontab -

    echo "Tarea agregada a crontab con la frecuencia: $cron_frequency"
fi
