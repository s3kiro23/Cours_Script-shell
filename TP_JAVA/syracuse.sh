#! /bin/bash

if [ $2 -lt $1 ]; then

    echo "Erreur l'argument 1 doit être supérieur!"
    exit 0

elif [ $# -ne 2 ]; then

    echo "Attention arg insuffisants!"
    exit 0

fi

javac Suite.java  

for i in `seq $1 $2`; do

    java Suite $i f$i.dat
    tail -n 3 f$i.dat | head -n 1 >> altMax
    tail -n 2 f$i.dat | head -n 1 >> dureeVol
    tail -n 1 f$i.dat >> dureeAlt

done

rm -r f*

exit 1