Algoritmo NumeroInvertido
	Escribir "Ingrese un numero de 3 digitos";
	Leer num;
	a <- num mod 10;
	num <- trunc(num / 10);
	
	b <- num mod 10;
	num <- trunc(num / 10);
	
	Escribir a, b, num
FinAlgoritmo
