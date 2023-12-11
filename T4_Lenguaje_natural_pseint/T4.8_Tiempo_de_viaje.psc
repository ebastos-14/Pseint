Algoritmo TiempoViaje
	minutos <- 0;
	Escribir "Ingrese la duracion del tramo en minutos"
	Leer minutos;
	Mientras minutos <> 0 Hacer
		minutosT = minutosT + minutos;
		Escribir "Ingrese la duracion del tramo en minutos"
		Leer minutos;
	FinMientras
	horas = trunc(minutosT / 60);
	minutosT = minutosT % 60;
	Escribir "El viaje duro ", horas, ":", minutosT;
FinAlgoritmo
