@echo off
rem El primer es demanar al usuari quina hora es
:inicio
set /p hora="Especifica la hora [HH]"
set /p min="Especifica els minuts [MM]"
set /p seg="Especifica els segons [SS]"

rem ara seguidament determinam si les dades introduides son correctes
if %hora% GTR 23 (
	goto incorrecto
)
rem ------------------
if %min% GTR 59 (
	goto incorrecto
)
rem ------------------
if %seg% GTR 59 (
	goto incorrecto
)
rem ------------------
rem En cas de introduir be les dades definim el sistema de if's que ens permet actualitzar la hora.

echo Los datos introducidos son correctos
pause 
goto loop

: loop

if %seg% LSS 60 ( 
set /a %seg%=%seg%+1) else ( set %seg%=0 && set /a %min%=%min%+1)

if %min% LSS 60(
set /a %min%=%min%+1) else ( set %min%=0 && set /a %hora%=%hora%+1)

if %hora% LSS 24 (
set /a %hora%=%hora%+1) else (set %hora%=0)

echo %hora%:%min%:%seg%
choice /t 1 /d s > NUL

goto fin
rem Aqui el que feim es definir el loop incorrecto que en cas de introduir les dades que no son ens envia al començament
:incorrecto

echo Los datos introducidos son incorrectos!
pause
goto inicio

: fin

pause 
exit



