# Usando la imagen oficial de MongoDB
FROM mongo:latest

# Copiamos el archivo para inicializar la base de datos
COPY ./data/mongo-init.js /docker-entrypoint-initdb.d/

# Exponemos el puerto
EXPOSE 27017