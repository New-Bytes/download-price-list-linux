#!/bin/bash

# Token para la URL
token="d305f705cd58888be3c78bdb7c0962"

# URL del archivo XLSX
url="http://api.nb.com.ar/v1/priceListExcel/$token"

# Ruta de descarga
download_path="/tu/ruta/deseada"

# Nombre del archivo de salida
output="downloaded_file.xlsx"

# Crear la ruta de descarga si no existe
mkdir -p "$download_path"

# Descargar el archivo
curl --location "$url" -o "$download_path/$output"

echo "Descarga completada: $download_path/$output"
