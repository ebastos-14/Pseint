Algoritmo AnnoBisiesto
	Escribir "Ingrese a�o";
	Leer anno;
	
	Si anno > 1582 Entonces
		u2Num = anno % 100;
		si u2Num == 0 Entonces
			Escribir "El a�o es bisiesto";
		SiNo
			si u2Num % 4 == 0 Entonces
				Escribir "El a�o es bisiesto";
			SiNo
				Escribir "El a�o no es bisiesto";
			FinSi
		FinSi
	SiNo
		Escribir "El a�o debe ser igual o mayor a 1852";
		
	Fin Si
	
	
FinAlgoritmo
