Proceso VectorPositivo
	Definir vector Como Entero;
	Dimension vector[10];
	Definir ind,num como Entero;
	ind<-0;
	Repetir
		Escribir Sin Saltar "Introduce un n�mero en el vector. N�mero ",ind+1;
		Leer vector[ind];
		ind<-ind+1;
	Hasta Que ind=10 O vector[ind-1]<0;
	ind<-0;
	Mientras ind<9 Y vector[ind]>=0 Hacer
		Escribir sin saltar vector[ind];
		ind<-ind+1;
	FinMientras
FinProceso
