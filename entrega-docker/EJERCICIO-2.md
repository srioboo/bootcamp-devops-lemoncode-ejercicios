### Ejercicio 2

Ahora que ya tienes la aplicación del ejercicio 1 dockerizada, utiliza Docker Compose para lanzar todas las piezas a través de este. Debes plasmar todo lo necesario para que esta funcione como se espera: la red que utilizan, el volumen que necesita MongoDB, las variables de entorno, el puerto que expone la web y la API. Además debes indicar qué comandos utilizarías para levantar el entorno, pararlo y eliminarlo.

#### Paso 0

En el raíz del proyecto (entrega-docker) lanzar:

```shell
docker compose up -d
```

Alternativamente se puede ejecutar el archivo docker-compose-dockerfiles.yml que usa los dockerfiles disponibles en cada directorio.

```shell
docker compose -f docker-compose-dockerfiles.yml up -d
```

Esto ejecuta el contenido del archivo docker-compose.yml y genera los dockers necesarios

#### Paso 1: Entrar en la app

Lanzar en el navegador http://localhost:8080/ y veremos los topics
