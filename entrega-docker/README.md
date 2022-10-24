## red

docker network create lemoncode-challenge

## node frontend

docker run -d -p 80:8080 --name node --network lemoncode-challenge node:latest

### este funciona

docker build . -t srn/node-web-app # esto crea el build
docker run -p 8080:3000 -d --name node-frontend --network lemoncode-challenge srn/node-web-app

## node backend

docker build . -t srn/node-web-backend
docker run -p 5000:3000 -d --name topics-api --network lemoncode-challenge srn/node-web-backend

# docker run -d -p

## mongo

docker run -d -p 27017:27017 --name mongo --network lemoncode-challenge mongo:latest

## mongo-express

docker run -it --rm \
 --network lemoncode-challenge \
 --name mongo-express \
 -p 8081:8081 \
 -e ME_CONFIG_OPTIONS_EDITORTHEME="ambiance" \
 -e ME_CONFIG_MONGODB_SERVER="mongo" \  
 -e ME_CONFIG_BASICAUTH_USERNAME="user" \
 -e ME_CONFIG_BASICAUTH_PASSWORD="password" \
 mongo-express
