Proceso Calificaciones
	Definir calif1, calif2, calif3, promedio Como Real
	
	Escribir "Ingrese la primera calificaci�n:"
	Leer calif1
	Escribir "Ingrese la segunda calificaci�n:"
	Leer calif2
	Escribir "Ingrese la tercera calificaci�n:"
	Leer calif3
	
	promedio = (calif1 + calif2 + calif3) / 3
	
	Si promedio >= 11.60 Entonces
		Escribir "El alumno ha aprobado el curso con un promedio de", promedio
	Sino
		Escribir "El alumno ha reprobado el curso con un promedio de", promedio
	FinSi
	
FinProceso