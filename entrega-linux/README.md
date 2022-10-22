# Solución Ejerciciós linux

## Ejercicio 1

**Enunciado:**
Crea mediante comandos de bash la siguiente jerarquía de ficheros y directorios
 foo/
 ├─ dummy/
 │  ├─ file1.txt
 │  ├─ file2.txt
 ├─ empty/
D onde file1.txt debe contener el siguiente texto:

Me encanta la bash!!
Y file2.txt debe permanecer vacío.

**Solución:**

```sh
# creación del primer directorio y el segundo
mkdir -p foo/{dummy,empty}

# Creación delos ficheros
touch foo/dummy/file{1,2}.txt

# rellenando el primer fichero
echo 'Me encanta la bash!!' >> foo/dummy/file1.txt
```

## Ejercicio 2

**Enunciado:**

Mediante comandos de bash, vuelca el contenido de file1.txt a file2.txt y mueve file2.txt a la carpeta empty
El resultado de los comandos ejecutados sobre la jerarquía anterior deben dar el siguiente resultado.

foo/
├─ dummy/
│  ├─ file1.txt
├─ empty/
  ├─ file2.txt
Donde file1.txt y file2.txt deben contener el siguiente texto:

Me encanta la bash!!

**Solución:**
```sh
# volcado de texto y mover fichero
cat foo/dummy/file1.ext >> foo/dummy/file2.txt && mv foo/dummy/file2.txt foo/empty/
```

## Ejercicio 3

**Enunciado:**

Crear un script de bash que agrupe los pasos de los ejercicios anteriores y además permita establecer el texto de file1.txt alimentándose como parámetro al invocarlo
Si se le pasa un texto vacío al invocar el script, el texto de los ficheros, el texto por defecto será:

Que me gusta la bash!!!!

**Solución:**

ver en:

```sh
#!/bin/bash

DEFAULT_TEXT='Qué me gusta la bash!!'

# creación del primer directorio y el segundo
mkdir -p foo/{dummy,empty}

# Creación delos ficheros
touch foo/dummy/file{1,2}.txt

# rellenando el primer fichero

TEXT=$DEFAULT_TEXT;

if [ $# != 0 ]; then

  # echo 'Tengo el parametro'
  TEXT=$1

fi

# echo 'El texto es: $TEXT'
echo $TEXT >> foo/dummy/file1.txt

# volcado de texto y mover fichero
cat foo/dummy/file1.txt >> foo/dummy/file2.txt && mv foo/dummy/file2.txt foo/empty/
```

## Ejercicio 4

**Enunciado:**

Crea un script de bash que descargue el contenido de una página web a un fichero y busque en dicho fichero una palabra dada como parámetro al invocar el script
La URL de dicha página web será una constante en el script.

Si tras buscar la palabra no aparece en el fichero, se mostrará el siguiente mensaje:

$ ejercicio4.sh patata
> No se ha encontrado la palabra "patata"
Si por el contrario la palabra aparece en la búsqueda, se mostrará el siguiente mensaje:

$ ejercicio4.sh patata
> La palabra "patata" aparece 3 veces
> Aparece por primera vez en la línea 27

**Solución**
```bash
#!/bin/bash


```


## Ejercicio 5 (Opcional)

**Enunciado:**

Modifica el ejercicio anterior de forma que la URL de la página web se pase por parámetro y también verifique que la llamada al script sea correcta
Si al invocar el script este no recibe dos parámetros (URL y palabra a buscar), se deberá de mostrar el siguiente mensaje:

$ ejercicio5.sh https://lemoncode.net/ patata 27
> Se necesitan únicamente dos parámetros para ejecutar este script
Además, si la palabra sólo se encuentra una vez en el fichero, se mostrará el siguiente mensaje:

$ ejercicio5.sh https://lemoncode.net/ patata
> La palabra "patata" aparece 1 vez
> Aparece únicamente en la línea 27

**Solución:**



