Algoritmo HoraFutura
	Definir hActual, hSuma, hFutura Como Entero;
	hH = "h";	hSalto = "====================";
	Escribir hSalto;
	Escribir "Hora Futura";
	Escribir hSalto;
	
	Escribir "Ingrese la hora actual, en formato de 24h y como numero entero";
	Leer hActual;
	Si hActual < 0 o hActual > 23 Entonces
		Escribir "La hora debe estar en un rango de 00h a 23h";
	SiNo
		Escribir "Ingrese la cantidad de horas a sumar, el numero debe ser entero";
		Leer hSuma;
		Si hSuma < 0  Entonces
			Escribir "La hora a sumar debe ser numero entero y mayor a 0";
		SiNo
			hFutura <- (hActual + hSuma) Mod 24;
			Escribir hSalto;
			Escribir "Hora actual: " hActual, hH;
			Escribir "Hora a sumar: ", hSuma, hH;
			Escribir "Hora futura: ", hFutura, hH;
			Escribir hSalto;
		Fin Si
	Fin Si
FinAlgoritmo