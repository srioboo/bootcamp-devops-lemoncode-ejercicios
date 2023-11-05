### Ejercicio 2: docker composer

Ahora que ya tienes la aplicación del ejercicio 1 dockerizada, utiliza Docker Compose para lanzar todas las piezas a través de este. Debes plasmar todo lo necesario para que esta funcione como se espera: la red que utilizan, el volumen que necesita MongoDB, las variables de entorno, el puerto que expone la web y la API. Además debes indicar qué comandos utilizarías para levantar el entorno, pararlo y eliminarlo.

#### Paso 0:

En el raíz del proyecto lanzar:

```shell
docker compose up
```

El contenido del archivo docker sería:

```yaml
version: "3.9"
services:
  frontend:
    build:
      context: ./frontend
      dockerfile: Dockerfile
    depends_on:
      - backend
  backend:
    build:
      context: ./backend
      dockerfile: Dockerfile
    depends_on:
      - mongo
  mongo:
    image: mongo:latest
networks:
  lemoncode-challenge:
```
