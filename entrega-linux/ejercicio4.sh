#!/bin/bash

# obtener la ruta
curl -s https://www.mayoral.com/robots.txt -o temp.txt

# buscar la palabra en el fichero


if [ $# != 0 ]; then
	COUNT=`grep $1 -c temp.txt`
	FIRST_LINE=`grep -n $1 temp.txt | head -n1 | awk -F: '{ print $1 }'`
	if [ $COUNT != 0 ]; then
		echo "La palabra \"$1\" se ha encontrado $COUNT veces"
		echo "Aparece por primera vez en la línea $FIRST_LINE"
	else	
		echo "No se ha encontrado la palabra \"$1\""
	fi
fi
