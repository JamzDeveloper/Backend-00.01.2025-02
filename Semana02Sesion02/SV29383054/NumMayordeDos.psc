	Proceso NumMayor
		// Pseudoc�digo en PSeInt para saber cual es el n�mero mayor de
		// dos n�meros
		Definir Numero, NumeroMayor Como Entero;
	
		Escribir "Escriba los  numero1 y el Numero2 : ";
		Leer Numero1, Numero2;

		
		// Determinar mediante condiciones cual es el n�mero mayor
		Si (Numero1 > Numero2) Entonces
			NumeroMayor <- Numero1;
		Sino
			NumeroMayor <- Numero2;
		FinSi
		
		Escribir "El numero mayor es: ", NumeroMayor;
	
FinProceso
