Proceso Algoritmo21_Factorial_Tradicional
	Definir num como Real
	Definir contador, factorial como Entero
	Definir Llave como Caracter
	Llave="" //Permite cerrar el bucle
	Escribir "[+++++++++++[INICIO]+++++++++++]"
	Repetir //Comienza el bucle
		
		Escribir "Ingrese un numero: "
		Leer num 
		factorial=0 //Para que al repetir el bucle no siga agregando
		//Validacion NO negativo
		Si num < 0 O TRUNC(num) <> num Entonces
			Escribir "ERROR: *DEBE SER ENTERO NO NEGATIVO*"
		SiNo
			factorial=1 		//
			Para contador=1 hasta num Hacer
					factorial=factorial*contador //Calculo
			FinPara
			Escribir "El factorial es: ", factorial
		FinSi
		
		//Menu para continuar o salir
		Escribir "[=============================]"
		Escribir "PRESIONE [ENTER] PARA CONTINUAR"
		Escribir "PARA TERMINAR ESCRIBA: SALIR"
		Leer Llave //Escribe o Presiona Enter
		Escribir "[=============================]"
	Hasta Que Mayusculas(Llave)=="SALIR" //La condicion para cerrar el bucle
	Escribir "[++++++++++++[FIN]+++++++++++++]"
	
FinProceso