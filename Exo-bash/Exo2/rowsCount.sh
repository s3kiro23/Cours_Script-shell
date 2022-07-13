#! /bin/bash

if [ $# -ne 2 ]; then

	echo "Nombre d'arguments insuffisant!"
	
	exit 1

elif [ ! -e $1 ]; then

	echo "Le 1er argument n'est pas un fichier existant!"
	
	exit 1

elif [ -d $1 ]; then 

	echo "Le 1er argument est un répertoire!"
	
	exit 1

else

while read line; do

	if [ -n "$line" ]; then
		echo $line >&2;
		i=0

		for word in $line; do
			i=$((i+1))
		
			if [ $i -eq $2 ]; then
		
				echo $word >&2
		
			fi
		
		done

	fi

done < $1

exit 0

fi
