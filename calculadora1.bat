echo off
:menu 
cls
echo Bienvenido a mi calculadora 
echo [1] sumar 
echo [2] restar 
echo [3] multiplicar 
echo [4] dividir
echo [5] Salir de la Calculadora

set /p opcion=Elija la operación a realizar: 

if "%opcion%" == "1" (
goto sumar
) else if "%opcion%" == "2" (
goto restar
) else if "%opcion%" == "3" (
goto multiplicar
) else if "%opcion%" == "4" (
goto dividir
) else if "%opcion%" == "5" (
goto eof
) else (
echo La opcion seleccionada no es valida
pause
goto menu
)

:sumar
set /p s1=Ingrese el primer valor: 
set /p s2=Ingrese el segundo valor:

set /a r=%s1% + %s2%
echo El resultado de la operacion: %r%
pause
goto menu

:restar
set /p s1=Ingrese el valor del minuendo:
set /p s2=Ingrese el valor del sustraendo:

set /a r=%s1%-%s2%
echo El resultado de la resta: %r%
pause
goto menu

:multiplicar
set /p s1=Ingrese el primer valor:
set /p s2=Ingrese el segundo valor:

set /a r=%s1%*%s2%
echo El resultado de la multiplicacion : %r%
pause
goto menu

:dividir
set /p s1=Ingrese el valor del dividendo:
set /p s2=Ingrese el valor del divisor:

:while
if %S2% == 0 (
echo EL valor ingresado no es valido
set /p s2=Ingrese nuevamente el valor del divisor
goto while
)

set /a r=%s1%*%s2%
echo El resultado de la disvision : %r%
pause
goto menu

:eof
echo Gracias por usar el programa
pause
exit