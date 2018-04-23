//################################################################################
//Procedimiento IncializarCola: Recibe un vector (cola) y su tama�o. 
//Recorre el vector e incializa sus elementos a *. 
//El * representa que el elemento est� vac�o.
//Par�metros de entrada: Tama�o del vector
//Par�metros de entrada y salida: El vector (cola)
//################################################################################

Funcion InicializarCola(cola Por Referencia,size_cola)
	Definir i Como Entero;
	Para i<-0 hasta size_cola-1 Hacer
		cola[i]<-"*";
	FinPara
FinFuncion

//################################################################################
//Funci�n LongitudCola: Recibe un vector (cola) y su tama�o. 
//Devuelve un contador con los elementos de la cola.
//Recorre el vector mientras no encuentre un * o llegue al final.
//Par�metros de entrada: Tama�o del vector, el vector (cola)
//################################################################################

Funcion size <- LongitudCola(cola,size_cola)
	Definir size Como Entero;
	size<-0;
	Mientras size<size_cola Y cola[size]<>"*" Hacer
		size<-size+1;
	FinMientras
FinFuncion

//################################################################################
//Funci�n EstaVaciaCola: Recibe un vector (cola) y su tama�o. 
//Devuelve un valor l�gico indicando si la cola est� vac�a.
//Est� vac�a si la longitud es 0.
//Par�metros de entrada: Tama�o del vector, el vector (cola)
//################################################################################

Funcion resultado <- EstaVaciaCola(cola,size_cola)
	Definir resultado Como Logico;
	Si LongitudCola(cola,size_cola)=0 Entonces
		resultado<-Verdadero;
	SiNo
		resultado<-Falso;
	FinSi
FinFuncion

Funcion resultado <- EstaLlenaCola(cola,size_cola)
	Definir resultado Como Logico;
	Si LongitudCola(cola,size_cola)=size_cola Entonces
		resultado<-Verdadero;
	SiNo
		resultado<-Falso;
	FinSi
FinFuncion

Funcion AddCola(cad, cola Por Referencia,size_cola)
	Si no EstaLlenaCola(cola,size_cola) Entonces
		cola[LongitudCola(cola,size_cola)]<-cad;
	SiNo
		Escribir "No se puede a�adir elemento. La cola est� llena";
	FinSi
FinFuncion

Funcion cad <- SacarDeLaCola(cola Por Referencia,size_cola)
	Definir cad Como Caracter;
	definir i Como Entero;
	Si no EstaVaciaCola(cola,size_cola) Entonces
		cad <- cola[0];
		Para i <- 0 hasta size_cola-2 Hacer
			cola[i]<-cola[i+1];
		FinPara
		cola[size_cola-1]<-"*";
	SiNo
		Escribir "No se puede sacar elemento. La cola est� vacia";
		cad<-"";	
	FinSi
FinFuncion

Funcion EscribirCola(cola,size_cola)
	Definir i Como Entero;
	i<-0;
	Mientras i<size_cola y cola[i]<>"*" Hacer
		Escribir Sin Saltar cola[i]," ";
		i<-i+1;
	FinMientras
	Escribir "";
FinFuncion

Proceso ProgramaCola
	Definir micola Como Caracter;
	Dimension micola[3];
	Definir tam_cola como Entero;
	Definir elem Como Caracter;
	Definir opcion Como Entero;
	tam_cola<-3;
	InicializarCola(micola,tam_cola);
	Repetir
		Escribir "1.- A�adir elemento a la cola";
		Escribir "2.- Sacar elemento de la cola";
		Escribir "3.- Longitud de la cola";
		Escribir "4.- Mostrar cola";
		Escribir "5.- Salir";
		Leer opcion;
		Segun opcion Hacer
			1:
				Escribir sin Saltar "Dame la cadena para a�adir a la cola:";
				Leer elem;
				AddCola(elem,micola,tam_cola);
			2:
				Escribir SacarDeLaCola(micola,tam_cola);
			3:
				Escribir "Longitud: ",LongitudCola(micola,tam_cola);
			4:
				EscribirCola(micola,tam_cola);
			5:
				
			De Otro Modo:
				Escribir "Opci�n incorrecta";
		FinSegun
		
	Hasta Que opcion=5;
FinProceso
