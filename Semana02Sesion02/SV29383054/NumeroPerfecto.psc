Proceso NumeroPerfecto
	Definir numero, sumaDivisores, i como entero;
	Escribir "Ingrese un n�mero para verificar si es perfecto";
	Leer numero;
	sumaDivisores=0
	para i= 1 hasta numero con paso 1 Hacer
		si numero%i=0 Entonces
			sumaDivisores=sumaDivisores + i;
		FinSi
	FinPara
	si sumaDivisores=numero Entonces 
		Escribir "El n�mero:",numero,"es perfecto";
	SiNo
		Escribir "El numero:",numero,"no es perfecto";
		
	FinSi
	
FinProceso
