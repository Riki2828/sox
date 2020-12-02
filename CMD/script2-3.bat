@echo off

rem El primer que volem fer es definir els 3 numeros
set /p num1="El primer numero?"
set /p num2="El segon numero?"
set /p num3="El tercer numero?"

rem ara el que feim es definir el paramere de mayor i menor per despres fer funcionar el sistema de if's
set mayor=0
set menor=%num1%

rem una vegada que hem definit els nostres numeros el que farem és un sistema de if's per determinar qui es el mayor i menor de els numeros
if %num1% GTR %mayor% (
	set mayor=%num1%
)
rem --------------------------
if %num2% GTR %mayor% (
	set mayor=%num2%
)
rem --------------------------
if %num2% LSS %menor% (
	set menor=%num2%
)
rem --------------------------
if %num3% GTR %mayor% (
	set mayor=%num3%
)
rem --------------------------
if %num3% LSS %menor% (
	set menor=%num3%
)
pause

rem Ara simplement ensenyam al usuari el mayor i el menor segon el nostre sistema de if's
echo El numero mayor=%mayor%
echo El numero menor es=%menor%

pause
exit
