Algoritmo NotaNecesaria
	Definir notaC, notaC1, notaC2, notaC3, notaL, notaR Como Real;
	nSalto = "====================";
		
	Escribir nSalto;
	Escribir "Nota Necesaria";
	Escribir nSalto;
	
	Escribir "Ingrese la nota del Certamen 1";
	Leer notaC1;
	Escribir "Ingrese la nota del Certamen 2";
	Leer notaC2;
	Escribir "Ingrese la nota del Laboratorio";
	Leer notaL;
	Escribir "Ingrese la nota necesaria para aprobar el ramo";
	Leer notaR;
	
	notaC <- (notaR - (notaL * 0.3)) / 0.7;
	notaC3 <- (notaC * 3) - (notaC1 + notaC2);
	
	Si notaC3 > 100 Entonces
        Escribir nSalto;
		Escribir "Lo siento, no puedes aprobar el certamen 3. Nota máxima superada."
		Escribir nSalto;
    Sino Si notaC3 < 0 Entonces
			Escribir nSalto;
			Escribir "¡Felicidades! Ya has aprobado el ramo con una nota mínima de 60."
			Escribir nSalto;
		Sino
			Escribir nSalto;
			Escribir "Necesitas obtener al menos ", Trunc(notaC3), " en el certamen 3 para aprobar el ramo."
			Escribir nSalto;
		FinSi
	Finsi
	
FinAlgoritmo
