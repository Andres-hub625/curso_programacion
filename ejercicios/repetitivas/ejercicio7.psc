//Realizar una algoritmo que muestre la tabla de multiplicar de un n�mero introducido por teclado.
Proceso TablaMultiplicar
	Definir num,i Como Entero;
	Escribir Sin Saltar "�De qu� n�mero quieres mostrar la tabla de multiplicar?:";
	Leer num;
	Para i<-1 hasta 10 Hacer
		Escribir i," * ",num," = ",i*num;
	FinPara
FinProceso
