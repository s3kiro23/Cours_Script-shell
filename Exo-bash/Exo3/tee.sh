#! /bin/bash

exec 3>$1 

if [ $# -ne 1 ]; then

	echo "Nombre d'arguments insuffisant ou trop d'arguments présent!"
	
	exit 1

elif [ -d $1 ]; then 

	echo "Le répertoire existe déjà!"
	
	exit 1

fi

while read line; do

	echo $line "renvoyé!" >&2
	echo $line "renvoyé!" >&3

done <&2

exit 0

fi
