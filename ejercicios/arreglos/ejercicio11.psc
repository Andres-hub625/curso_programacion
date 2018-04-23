//################################################################################
//Dise�ar el algoritmo correspondiente a un programa, que:
// * Crea una tabla bidimensional de longitud 5x5 y nombre 'diagonal'.
// * Carga la tabla de forma que los componentes pertenecientes a la diagonal de la 
//matriz tomen el valor 1 y el resto el valor 0.
// * Muestra el contenido de la tabla en pantalla.
//################################################################################
//An�lisis
//Recorro la tabla: si el indice de fila = indice de columna (diagonal principal)
//o indice de fila = numero de filas - 1 - indice de columnas (la otra diagonal)
// guardo un 1 sino guardo un 0.
//Recorro la tabla por columnas y filas y voy acumulando el valor de lo elementos
//de cada fila.
// Datos de entrada: Los elementos de la tabla.
// Informaci�n de salida: La suma por cada columna, y la suma por cada fila
// Variables: matriz (tabla de 5 x 5 enteros),fila,col,num_filas,num_cols (enteros)
//            suma (entero)
//################################################################################

Proceso Diagonal
	Definir matriz Como Entero;
	Dimension matriz[5,5];
	Definir fila,col como Entero;
	Definir num_filas, num_cols Como Entero;
	Definir suma como Entero;
	num_filas<-5;
	num_cols<-5;
	//Recorro la tabla 
	Para fila<-0 hasta num_filas-1 Hacer
		Para col<-0 hasta num_cols-1 Hacer
			//Si estoy en alguna diagonal incializo a 1
			Si fila=col o fila=(num_filas-1)-col Entonces
				matriz[fila,col]<-1;
			//No estoy en diagonal, inicalizo a 0
			SiNo
				matriz[fila,col]<-0;
			FinSi
			
		FinPara
	FinPara
	//Recorro para mostrar tabla
	Para fila<-0 hasta num_filas-1 Hacer
		Para col<-0 hasta num_cols-1 Hacer
			Escribir Sin Saltar matriz[fila,col];
		FinPara
		Escribir "";
	FinPara
	
FinProceso	
