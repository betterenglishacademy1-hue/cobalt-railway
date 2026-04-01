FROM ghcr.io/imputnet/cobalt:latest

# Crear el directorio para las cookies
RUN mkdir -p /app/config

# Copiar el archivo de cookies
COPY cookies.json /app/config/cookies.json

# Establecer la variable de entorno
ENV COOKIE_PATH=/app/config/cookies.json

# Exponer el puerto
EXPOSE 9000

# Comando por defecto
CMD ["node", "dist/index.js"]