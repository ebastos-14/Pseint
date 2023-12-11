Algoritmo Calculadora
	Definir cantidad, cNumeros, cPares, seleccionPar, tipo, resultado, contar Como Real;
	Definir separador, opcionDivision, opcionMultiplicacion Como Caracter;
	separador = "==============================";
	
	Limpiar Pantalla
	Escribir separador;
	Escribir "          CALCULADORA          ";
	Escribir separador;
	Escribir "Selecciona que tipo de operacion va a realizar";
	Escribir "1. Suma";
	Escribir "2. Resta";
	Escribir "3. Multiplicacion";
	Escribir "4. Division";
	Escribir separador;
	Leer tipo;
	
	si tipo = 1 Entonces tipoOperacion <- "Suma";	FinSi;
	si tipo = 2 Entonces tipoOperacion <- "Resta";	FinSi;
	si tipo = 3 Entonces tipoOperacion <- "Multiplicacion";	FinSi;
	si tipo = 4 Entonces tipoOperacion <- "Division";	FinSi;
	
	Limpiar Pantalla
	Escribir separador;
	Escribir "Que cantidad de numeros quiere ingreasr (Maximo 10)";
	Leer cantidad;
	Escribir separador;
	
	Escribir "Ingrese los numeros para la operacion ", tipoOperacion;
	Dimension cNumeros[cantidad];
	Para i = 1 Hasta cantidad Hacer
		Leer cNumeros[i];
	FinPara
	Escribir separador;
	
	Dimension cPares[cantidad];
	seleccionPar = nPares(cNumeros, cantidad, cPares);
	
	Segun tipo Hacer	
		1:
			Escribir "Resultado de operacion ", tipoOperacion, ": ";
			Escribir tipoSuma(cNumeros, cantidad);
			Escribir separador;
		2:
			Escribir "Resultado de operacion ", tipoOperacion, ": ";
			Escribir tipoResta(cNumeros, cantidad);
			Escribir separador;
		3:
			Escribir "Como quiere hacer la multiplicacion";
			Escribir "1. Multiplicar numeros pares";
			Escribir "2. Multiplicar todos los numeros";
			Leer opcionMultiplicacion;
			Escribir separador;
			si opcionMultiplicacion = "1" Entonces tipoOpcion <- "en par"; FinSi;
			si opcionMultiplicacion = "2" Entonces tipoOpcion <- "normal"; FinSi;
			Si opcionMultiplicacion == "1" Entonces
				Escribir "Resultado de operacion ", tipoOperacion, " ", tipoOpcion, ": ";
				Escribir tipoMultiplicacionPares(cPares, cantidad);
				Escribir separador;
			SiNo
				Si opcionMultiplicacion == "2" Entonces
					Escribir "Resultado de operacion ", tipoOperacion, " ", tipoOpcion, ": ";
					Escribir tipoMultiplicacion(cNumeros, cantidad);
					Escribir separador;
				SiNo
					Escribir "Esa opcion no existe";
				FinSi
			FinSi
		4:
			Escribir "Como quiere hacer la division";
			Escribir "1. Dividir numeros pares";
			Escribir "2. Dividir todos los numeros";
			Leer opcionDivision;
			Escribir separador;
			si opcionDivision = "1" Entonces tipoOpcion <- "en par"; FinSi;
			si opcionDivision = "2" Entonces tipoOpcion <- "normal"; FinSi;
			Si opcionDivision == "1" Entonces
				Escribir "Resultado de operacion", tipoOperacion, " ", tipoOpcion, ": ";
				Escribir tipoDivisionPares(cPares, cantidad);
				Escribir separador;
			SiNo
				Si opcionDivision == "2" Entonces
					Escribir "Resultado de operacion", tipoOperacion, " ", tipoOpcion, ": ";
					Escribir tipoDivision(cNumeros, cantidad);
				SiNo
					Escribir "Esa opcion no existe";
				FinSi
			FinSi
		De Otro Modo:
			Escribir "Esta opcion no existe";
	FinSegun
	
FinAlgoritmo

// SUMA
Funcion resultado <- tipoSuma (cNumeros, cantidad)
	resultado = 0;
	Para i = 1 Hasta cantidad Hacer
		resultado = resultado + cNumeros[i];
	FinPara
FinFuncion

// RESTA
Funcion resultado <- tipoResta (cNumeros, cantidad)
	resultado = cNumeros[1];
	Para i = 1 Hasta cantidad Hacer
		resultado = resultado - cNumeros[i];
	FinPara
FinFuncion

// MULTIPLICACION SIMPLE
Funcion resultado <- tipoMultiplicacion (cNumeros, cantidad)
	resultado = 1;
	Para i = 1 Hasta cantidad Hacer
		resultado = resultado * cNumeros[i];
	FinPara
FinFuncion

// MULTIPLICACION PAR
Funcion resultado <- tipoMultiplicacionPares (cNumeros, cantidad)
	resultado = 1;
	Para i = 1 Hasta cantidad Hacer
		si cNumeros[i] <> 0 Entonces
			resultado = resultado * cNumeros[i];
		FinSi
	FinPara
FinFuncion

// DIVISION SIMPLE
Funcion resultado <- tipoDivision (cNumeros, cantidad)
	resultado = 1;
	Para i = 1 Hasta cantidad Hacer
		resultado = resultado / cNumeros[i];
	FinPara
FinFuncion

// DIVISION PAR
Funcion  resultado <- tipoDivisionPares (cNumeros, cantidad)
	resultado = cNumeros[1];
	Para i = 2 Hasta  cantidad Hacer
		si cNumeros[i] <> 0 Entonces
			resultado = resultado / cNumeros[i];
		FinSi
	FinPara
FinFuncion

// NUMERO PAR
Funcion contar <- nPares (cNumeros, cantidad, cPares)
	contar = 0;
	Para i = 1 Hasta cantidad Hacer
		si (cNumeros[i] mod 2) == 0 Entonces
			cPares[i] = cNumeros[i];
			contar = contar + 1;
		FinSi
	FinPara
FinFuncion
