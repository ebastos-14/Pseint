Algoritmo Problema3
	Definir numero1, numero2 Como Entero;
	numero3 <- 0
	Escribir "Ingrese un numero"; leer  numero1;
	Escribir  "ingrese otro numero"; leer numero2;
	
	Mientras (numero1 < numero2) Hacer
		si (numero1 mod 2 = 0) Entonces
			Escribir "", numero1
			numero3 <- numero3 + numero1
		FinSi
		numero1 <- numero1 + 1
	FinMientras
	Escribir "Los numeros pares entre 0 y ", numero2, " son";
FinAlgoritmo
