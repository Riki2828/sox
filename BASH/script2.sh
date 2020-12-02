#!/bin/bash

fitxeraux1=/home/rvillanuevaa/Escriptori/scriptssox/fitxeraux1.txt
fitxeraux2=/home/rvillanuevaa/Escriptori/scriptssox/fitxeraux2.txt
echo "Introdueix el primer numero"
read num1

echo "Introdueix el segon numero"
read num2

echo "Introdueix el tercer numero"
read num3 

echo "Introdueix el cuart numero"
read num4

echo $num1 > $fitxeraux1
echo $num2 >> $fitxeraux1
echo $num3 >> $fitxeraux1
echo $num4 >> $fitxeraux1

sort $fitxeraux1 > $fitxeraux2

mayor=`tail -n 1 $fitxeraux2`
menor=$(head -n 1 $fitxeraux2)

echo El numero mayor es=$mayor
echo El numero mayor es=$menor

read -p "Presiona enter per sortir"

exit

