Algoritmo AnnoBisiesto
	Escribir "Ingrese año";
	Leer anno;
	
	Si anno > 1582 Entonces
		u2Num = anno % 100;
		si u2Num == 0 Entonces
			Escribir "El año es bisiesto";
		SiNo
			si u2Num % 4 == 0 Entonces
				Escribir "El año es bisiesto";
			SiNo
				Escribir "El año no es bisiesto";
			FinSi
		FinSi
	SiNo
		Escribir "El año debe ser igual o mayor a 1852";
		
	Fin Si
	
	
FinAlgoritmo
