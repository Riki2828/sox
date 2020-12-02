@echo off

rem El primer que feim és demanar les dues entrades mes la operacio que volem realitzar
set /p num1="Inserta un numero  "
set /p oper= "Introdueix el tipus de operacio a realitxar([-], [+], [*], [/]  "
set /p num2="Inserta un numero  "

rem Aqui definim la accio que volem fer
set /a operacio=%num1% %oper% %num2%

rem Realizam la operacio
echo %operacio% 
pause 
exit