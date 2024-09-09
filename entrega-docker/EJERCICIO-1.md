### Ejercicio 1

#### Paso 0

Recordad trabajar desde el directorio principal desde el que se puede acceder a "entrega-docker/database",
"entrega-docker/frontend" y "entrega-docker/backend" para que sea más accesible acceder a todos los directorios

#### Paso 1: creación de la red

```shell
docker network create lemoncode-challenge
```

#### Paso 2: creación base de datos mongo

Para instalar el servidor de mongodb, desde el directorio entrega-docker

```shell
cd database
```

crear .env a partir de .env.template que conteiene todas las variables de entorno y a continuación:

```shell
docker build . -t srn/mongo-database
docker run -d --network lemoncode-challenge --name some-mongo \
        -h some-mongo \
        --mount source=mongodata,destination=/data/db \
        -p 27017:27017 \
        --env-file ./.env \
        srn/mongo-database
```

#### Paso 3: creación node backend

Es necesario estar dentro del directorio backend ya que es donde está el Dockerfile, si no estás en él lanzar el comando:

Desde el directorio entrega-docker

```shell
cd backend
```

y configurar la base de datos, creanado .env a partir de .env.template, con los siguiente datos

```ini
DATABASE_URL=mongodb://localhost:27017
DATABASE_NAME=TopicstoreDb
HOST=localhost
PORT=27017
```

y a continuación:

```shell
docker build . -t srn/node-web-backend
docker run -p 5000:5000 \
        --env-file ./.env \
        -d \
        --name topics-api \
        -h topics-api \
        --network lemoncode-challenge \
        srn/node-web-backend
```

- build: construye la imagen
- -t: añade un tag

#### Paso 4: creación del frontend

Es necesario estar dentro del directorio frontend ya que es donde está el Dockerfile, si no estás en él lanzar el comando:

```shell
cd frontend
```

crear .env a partir de .env.template y a continuación:

```shell
docker build . -t srn/node-web-app
docker run -p 8080:3000 \
        --env-file ./.env \
        -d \
        --name node-frontend \
        -h node-frontend \
        --network lemoncode-challenge \
        srn/node-web-app
```

#### Paso 5: Entrar en la app

Lanzar en el navegador http://localhost:8080/ y veremos los topics
