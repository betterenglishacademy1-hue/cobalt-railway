FROM ghcr.io/imputnet/cobalt:latest

# Copiar el archivo de cookies al directorio raíz
COPY cookies.json /cookies.json

# Establecer la variable de entorno
ENV COOKIE_PATH=/cookies.json
