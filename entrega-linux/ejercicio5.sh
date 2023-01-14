#!/bin/bash

# verifica parametros
if [ $# -ne 2 ]; then
	echo "Se necesitan únicamente dos parámetros para ejecutar este script"
else
	# obtener la ruta
	curl -s $1 -o temp.txt

	# buscar la palabra en el fichero
	if [ $# != 0 ]; then
		COUNT=`grep $2 -c temp.txt`
		FIRST_LINE=`grep -n $2 temp.txt | head -n1 | awk -F: '{ print $1 }'`
		if [ $COUNT == 0 ]; then
			echo "No se ha encontrado la palabra \"$2\""
		elif [ $COUNT == 1 ]; then
			echo "La palabra \"$2\" aparece $COUNT vez"
			echo "Aparece unicamente en la línea $FIRST_LINE"
		else	
			echo "La palabra \"$2\" se ha encontrado $COUNT veces"
			echo "Aparece por primera vez en la línea $FIRST_LINE"
		fi
	fi
fi
