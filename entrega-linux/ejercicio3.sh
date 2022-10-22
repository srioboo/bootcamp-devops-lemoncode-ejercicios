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
