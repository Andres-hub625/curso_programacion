Pide al usuario dos pares de n�meros x1,y2 y x2,y2, que representen dos puntos en el plano. Calcula y muestra la distancia entre ellos.
//An�lisis
//Se piden dos puntos y se calcula la distancia entree ellos. 
//Datos de entrada: dos puntos; cuatro coordenadas (x1,y1) (x2,y2) (entero).
//Informaci�n de salida: distancia (real).
//Variables: x1,y1,x2,y2(entero), distancia(real).
//Dise�o
//1. Leer las cuatro coordenadas.
//2. Calular distancia: ra�z cuadrada de (x2-x1)�2 + (y2-y1)�2
//2. Mostrar distancia 
Proceso CalcularDistanciaEntrePuntos
	Definir x1,x2,y1,y2 como Entero;
	Escribir "Dime las coordenadas del punto 1:";
	Leer x1;
	Leer y1;
	Escribir "Dime las coordenadas del punto 2:";
	Leer x2;
	Leer y2;
	distancia - raiz((x2-x1)�2 + (y2-y1)�2)
	Escribir "Distancia:", distancia;
FinProceso