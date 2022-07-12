#! /bin/bash

if [ $# -ne 1 ]; then 

echo "Nombre d'arguments erronés" >&2
exit 1

elif [ ! -d $1 ]; then

echo "Ce dossier n'existe pas!"
exit 1

fi 

file=$(ls -l)

while read in line; do
	i=0

	if [ -x $line ]; then

		echo $(du -sh $line) >&2

		i=$(i + 1)

	fi

done < $file

exit 0


