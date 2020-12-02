#!/bin/bash

echo "Introdueix la hora [HH]"
read hora

echo "Introdueix els minuts [MM]"
read min

echo "Introdueix els segons [SS]"
read seg 

if [ $hora -le 23 ] 

then
	echo "Els parametres son correctes! La hora introduida es:"$hora:$min:$seg

else
	echo "La hora introduida es incorrecte! Torna a començar"
	exit
fi


read -p "Presiona enter per sortir"
exit
