//Escribe un programa que diga si un n�mero introducido por teclado es o no primo. 
//Un n�mero primo es aquel que s�lo es divisible entre �l mismo y la unidad. 
//Nota: Es suficiente probar hasta la ra�z cuadrada del n�mero para ver si es divisible por alg�n otro n�mero.
Proceso EsPrimo
	Definir num,i Como Entero;
	Definir es_primo Como Logico;
	es_primo<-Verdadero;
	Escribir Sin Saltar "Introduce un n�mero para comprobar si es primo:";
	Leer num;
	Para i<-2 hasta rc(num) Hacer
		Si num % i = 0 Entonces
			es_primo <- Falso;
		FinSi
	FinPara
	Si es_primo Entonces
		Escribir "Es Primo";
	SiNo
		Escribir "No es Primo";
	FinSi
	
FinProceso
