### Ejercicio 1: proceso

#### Paso 0: configuración

crear .env a partir de .env.template, y añadir datos de base de datos, etc

#### Paso 1: creación de la red

```shell
docker network create lemoncode-challenge
```

#### Paso 2: creación base de datos mongo

Para instalar el servidor de mongodb

Crear un directorio persistente para la base de datos
```shell
mkdir -p mkdir -p ~/mongo/data
```

Desde el directorio entrega-docker
```shell
cd database
```
crear .env a partir de .env.template que conteiene todas las variables de entorno y a continuación:

```shell
docker run -d --network lemoncode-challenge --name some-mongo -h some-mongo -v ~/mongo/data:/data/db -p 27017:27017 --env-file ./.env mongo:latest
```

#### Paso 3: creación node backend

Es necesario estar dentro del directorio backend ya que es donde está el Dockerfile, si no estás en él lanzar el comando:

```shell
cd backend
```

y a continuación:

```shell
docker build . -t srn/node-web-backend
docker run -p 5000:5000 --env-file ./.env -d --name topics-api -h topics-api --network lemoncode-challenge srn/node-web-backend
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
docker build . -t srn/node-web-app # esto crea el build
docker run -p 8080:3000 --env-file ./.env -d --name node-frontend -h node-frontend --network lemoncode-challenge srn/node-web-app
```

#### Paso 5: Entrar en la app

Lanzar en el navegador http://localhost:8080/ y veremos los topics