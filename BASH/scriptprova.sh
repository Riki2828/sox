#/bin/bash
numero=0

while [ $numero -lt 10 ];

do

	let numero=$numero+1

	echo $numero
	sleep 1
done

