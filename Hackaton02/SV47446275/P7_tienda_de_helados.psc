Proceso tienda_de_helados
		Definir tipo_membresia Como Cadena
		Definir precio_helado, descuento, total_comprado Como Real
		
		Escribir "Introduce el precio del helado: "
		Leer precio_helado
		
		Escribir "Introduce el tipo de membres�a (A, B, C): "
		Leer tipo_membresia
		
		// Convertir la entrada a may�sculas 
		tipo_membresia <- Mayusculas(tipo_membresia)
		
		
		Si tipo_membresia = "A" Entonces  // Determinar el descuento seg�n el tipo de membres�a
			descuento <- 0.10  // 10% 
		  Sino Si tipo_membresia = "B" Entonces
				descuento <- 0.15  // 15%
			     Sino Si tipo_membresia = "C" Entonces
						descuento <- 0.20  // 20% 
						Sino
							descuento <- 0  // Si no es A, B o C, no hay descuento
								Escribir "Tipo de membres�a no v�lido. No se aplica descuento."
							FinSi
				finsi
							
		FinSi
			
				// Calcular el total con el descuento
				Si descuento > 0 Entonces
					total_comprado <- precio_helado - (precio_helado * descuento)
					  Sino
							total_comprado <- precio_helado  // Si no es v�lido, no se aplica descuento
				FinSi
				
				Escribir "El total a pagar despu�s del descuento es: S/", total_comprado
			


FinProceso
