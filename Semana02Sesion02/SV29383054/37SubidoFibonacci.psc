Proceso Fibonacci
	Definir n, i, num1, num2, suma Como Entero
	Escribir "Ingrese la cantidad de n�meros de la serie de Fibonacci a mostrar:"
	Leer n
	num1 = 0
	num2 = 1
	Escribir "Los ", n, " primeros n�meros de la serie de Fibonacci son:"
	Escribir num1
	Escribir num2
	Para i = 3 Hasta n Con Paso 1
		suma = num1 + num2
		Escribir suma
		num1 = num2
		num2 = suma
	FinPara
FinProceso