@echo off
rem aqui definim com varaiables els fitxers per facilitar la sitaxis
set fitxeraux="D:\Cosas Varias\Instituto\SMX2\SOX\Scripts\ficheronums.txt"
set fitxeraux2="D:\Cosas Varias\Instituto\SMX2\SOX\Scripts\ficheronums2.txt"

rem El primer que volem fer es definir els 4 numeros
set /p num1="El primer numero?"
set /p num2="El segon numero?"
set /p num3="El tercer numero?"
set /p num4="El cuarto numero?"

rem La següent pasa es especificar on volem guardar els parametres per aixi poder utilitzar aquest fitxer posteriorment
echo %num1% > %fitxeraux%
pause
echo %num2% >> %fitxeraux%
echo %num3% >> %fitxeraux%
echo %num4% >> %fitxeraux%

rem Després simplement executam la comanda sort i indicam que volem guardar-lo a un fitxer auxiliar on tendrem els numeros ordenats
sort %fitxeraux% > %fitxeraux2%

rem Definim els parametres de menor i mayor amb la primera i darrera lina respectivament
rem (don't works) set menor=%fitxeraux2%
rem (don't works)set mayor=%fitxeraux2%

rem I finalment ensenyam per pantalla els valors
rem (don't works) echo Mayor %mayor%
rem (don't works) echo Menor %menor%

pause 
exit
