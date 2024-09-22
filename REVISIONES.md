# Revisión Entregas

## Módulo Linux

Ejercicio 1: bien.
Ejercicio 2: bien.
Ejercicio 3: bien, aunque también deberías contemplar el caso en el que el script reciba más de 1 argumento. En dicho caso, deberías de lanzar un error y terminar la ejecución del script en ese momento.
Ejercicio 4: bien, aunque no deberías de ejecutar curl hasta que sepas que al script se le han pasado el número de argumentos esperados (en este caso 1).
Ejercicio 5: ojo! La condición if [ $# != 0 ] no es necesaria, ya que anteriormente has verificado el número de parámetros que recibe el script. Por lo demás, bien.

## Módulo Docker

**Ejercicio 1:**
Base de datos: no hace falta crear una imagen, podrías haber usado directamente la imagen de mongo. Además, las variables de entorno que usas no son las de la imagen de mongo, si no de la imagen de mongo-express. Por otro lado, no había que mapear el puerto a tu máquina local.
Backend: las variables de entorno DATABASE_URL y HOST no pueden apuntar a localhost y, al igual que ocurre en la base de datos, no puedes mapear el puerto a tu máquina local.
Frontend: todo bien.
Común a backend y frontend: has usado como imagen base node:16. Podrías haber usado una versión de Node.js más reciente.
Hubiera estado bien añadir alguna captura de pantalla demostrando el correcto funcionamiento del entorno propuesto.

**Ejercicio 2:**
Una aclaración, en el primer fichero de Docker compose (docker-compose.yml) ya estás usando los Dockerfile para backend y frontend. La utilidad del campo build.dockerfile es para indicar que se use un Dockerfile en una ruta diferente a la indicada en build.context o para usar un fichero con nombre diferente a Dockerfile. Te dejo enlace a la documentación de Docker: https://docs.docker.com/reference/compose-file/build/#dockerfile
En el fichero docker-compose.yaml los comandos que utilizas en backend y frontend no son necesarios, el entrypoint de ambas imágenes ya se encarga de arrancar ambas aplicaciones.
Los comentarios relacionados con el mapeo de puertos y uso de localhost del ejercicio anterior aplican aquí también.
Te faltan los comandos de Docker Compose para parar, reiniciar y eliminar el entorno.

## Módulo Kubernetes

TODO: por hacer

## Módulo CI/CD

TODO: por hacer
