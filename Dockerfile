FROM ghcr.io/imputnet/cobalt:latest

# Establecer el directorio de trabajo
WORKDIR /app

# Crear el directorio para las cookies
RUN mkdir -p /app/config && chmod 755 /app/config

# Copiar el archivo de cookies
COPY cookies.json /app/config/cookies.json

# Establecer permisos
RUN chmod 644 /app/config/cookies.json

# Establecer la variable de entorno
ENV COOKIE_PATH=/app/config/cookies.json

# Exponer el puerto
EXPOSE 9000