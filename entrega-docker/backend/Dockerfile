FROM node:lts-alpine

# creacion de variables de entorno
ENV DATABASE_URL=mongodb://some-mongo:27017
ENV DATABASE_NAME=TopicstoreDb
ENV HOST=topics-api
ENV PORT=5000

# crea el directorio de modulos y le da permisos adecuados
RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

# Crea el directorio de la aplicacion
WORKDIR /home/node/app 

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY --chown=node:node package*.json ./

# cambia al usuario node
USER node

# lanza la instalacion de npm
RUN npm install --silent
# If you are building your code for production
# RUN npm ci --only=production

# RUN npm run build 

# Bundle app source
COPY --chown=node:node . .

# expone el puerto 5000
EXPOSE 5000

# Ejecuta node dist/app.js para lanzar el servidor
CMD [ "node", "dist/app.js" ]
