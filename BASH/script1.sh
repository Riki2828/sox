#!/bin/bash

echo "Introdueix el primer valor de la operacio"
read num1

echo "Introdueix la operació a realitzar"
read oper

echo "Introdueix el segon valor de la operacio"
read num2

let resultat=$num1$oper$num2

echo El resultat es $resultat
exit
