#! /bin/bash

if [ $# -ne 1 ] || [ -d $1 ]; then

	echo "Usage $0 , fichier"
	exit 0

fi

echo "0" > $1

while true; do

	read a<$1
	a=$(expr $a + 1)
	echo $a > $1
	sleep 1

done
