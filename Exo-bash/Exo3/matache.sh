if [ $# -ne 1 ]; then

	echo "Nombre d'arguments erronés!"
	
	exit 1

elif [ ! -d $1 ]; then 

    echo "L'argument n'est pas un dossier!"
    
    exit 1

fi

file=$(ls -l $1)
count=0

if [ ! -d $1/exec ]; then

mkdir $1/exec

fi

for i in $file; do
    
    if [ -x $1/$i ] && [ ! -d $1/$i ]; then

        echo $(du -sh $1/$i) >&2
        
        count=$((count + 1))

        mv $1/$i $1/exec

    fi

done

echo $count >&2

exit 0

fi