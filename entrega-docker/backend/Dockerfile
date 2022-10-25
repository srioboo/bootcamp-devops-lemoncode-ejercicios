FROM node:lts-alpine
# ENV NODE_ENV=production

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

# Create app directory
# WORKDIR /usr/src/app
WORKDIR /home/node/app 

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY --chown=node:node package*.json ./

USER node

RUN npm install --silent
# If you are building your code for production
# RUN npm ci --only=production

# RUN npm run build 


# Bundle app source
COPY --chown=node:node . .

EXPOSE 5000
# CMD [ "node", "server.js" ]



CMD [ "node", "dist/app.js" ]
# CMD [ "npm", "start" ]
