FROM node:16

# Crea el directorio de la aplicacion
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

# hay que compiar el archivo de configuración
COPY tsconfig.json ./

# cambia al usuario node
# USER node

# lanza la instalacion de npm
RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# RUN npm run build 

# Bundle app source
COPY --chown=node:node . .

# expone el puerto 5000
EXPOSE 5000

# Ejecuta node dist/app.js para lanzar el servidor
# CMD [ "node", "dist/app.js" ]
CMD [ "npm", "start" ]
