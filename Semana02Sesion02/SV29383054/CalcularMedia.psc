//28.Hacer un algoritmo en Pseint que lea tres n�meros y diga cu�l es el mayor.
Proceso CalcularMedia
	Definir num,suma,contador Como Real
	contador=0;
	Repetir
		Escribir "ingrese un numero positivo (o un n�mero negativo para finalizar)"
		Leer num
		si num>=0 Entonces
			suma=suma+num
			contador=contador+1
		FinSi
		
	Hasta Que num<0
	si contador>0 Entonces
		Escribir "la media de los n�meros ingresados es:",suma/contador
	SiNo
		Escribir "No se ingresaron numeros positivos"
		
	FinSi
		
FinProceso
