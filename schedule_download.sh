#!/bin/bash

# Comando completo para la descarga
download_command="/ruta/al/script/download_xlsx.sh"

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

echo "Tarea programada en crontab para ejecutarse cada $frequency_in_minutes minutos."
