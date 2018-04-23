//################################################################################
//Procedimiento Intercambiar: Recibe dos n�meros como par�metros de entrada y 
//salida e intercambia sus valores si el segundo es mayor que el primero.
//Par�metros de entrada y salida: dos n�meros
//################################################################################

Funcion Intercambiar(mayor Por Referencia, menor Por Referencia)
	Definir aux como Entero;
	Si mayor<menor Entonces
		aux<-mayor;
		mayor<-menor;
		menor<-aux;
	FinSi
FinFuncion

//################################################################################
//Funci�n CalcularMCD: Recibe dos n�meros y devuelve el MCD utilziando el m�todo 
//de Euclides. El m�todo de Euclides es el siguiente:
// * Se divide el n�mero mayor entre el menor.
// * Si la divisi�n es exacta, el divisor es el MCD.
// * Si la divisi�n no es exacta, dividimos el divisor entre el resto obtenido y 
//se contin�a de esta forma hasta obtener una divisi�n exacta, siendo el �ltimo divisor el MCD.
//Par�metros de entrada: dos n�meros
//Dato devuelto: El MCD
//################################################################################

Funcion mcd <- CalcularMCD(num1,num2)
	Definir mcd Como Entero;
	definir resto Como Entero;
	Intercambiar(num1,num2);
	resto <- num1 % num2;
	Si resto = 0 Entonces
		mcd <- num2;
	SiNo
		mcd <- CalcularMCD(num2,resto);
	FinSi
FinFuncion

Funcion LeerFraccion(num Por Referencia,den Por Referencia)
	Escribir sin Saltar "Numerador:";
	Leer num;
	Escribir sin Saltar "Denominador:";
	Leer den;
	SimplificarFraccion(num,den);
FinFuncion

Funcion SimplificarFraccion(num Por Referencia,den Por Referencia)
	Definir mcd como Entero;
	mcd <- CalcularMCD(num,den);
	num <- num / mcd;
	den <- den / mcd;
FinFuncion

Funcion EscribirFraccion(num,den)
	Si den<> 1 Entonces
		Escribir num;
		Escribir "---";
		Escribir den;
	SiNo
		Escribir "";
		Escribir num;
		Escribir "";
	FinSi
FinFuncion

Funcion SumarFracciones(n1,d1,n2,d2,nr Por Referencia,dr Por Referencia)
	nr <- n1*d2 + d1*n2;
	dr <- d1 * d2;
	SimplificarFraccion(nr,dr);
FinFuncion

Funcion RestarFracciones(n1,d1,n2,d2,nr Por Referencia,dr Por Referencia)
	nr <- n1*d2 - d1*n2;
	dr <- d1 * d2;
	SimplificarFraccion(nr,dr);
FinFuncion
Funcion MultiplicarFracciones(n1,d1,n2,d2,nr Por Referencia,dr Por Referencia)
	nr <- n1 * n2;
	dr <- d1 * d2;
	SimplificarFraccion(nr,dr);
FinFuncion

Funcion DividirFracciones(n1,d1,n2,d2,nr Por Referencia,dr Por Referencia)
	nr <- n1 * d2;
	dr <- d1 * n2;
	SimplificarFraccion(nr,dr);
FinFuncion

Proceso Fracciones
	Definir num1,den1,num2,den2,numr,denr como Entero;
	Definir opcion Como Entero;
	Repetir
		Escribir "1.- Sumar dos fracciones";
		Escribir "2.- Restar dos fracciones";
		Escribir "3.- Multiplicar dos fracciones";
		Escribir "4.- Dividir dos fracciones";
		Escribir "5.- Salir";
		Leer opcion;
		Si opcion<>5 Entonces
			Escribir "Fracci�n 1:";
			LeerFraccion(num1,den1);
			Escribir "Fracci�n 2:";
			LeerFraccion(num2,den2);
		FinSi
			
		Segun opcion Hacer
			1:
				Escribir "Sumar fracciones";
				SumarFracciones(num1,den1,num2,den2,numr,denr);
				EscribirFraccion(numr,denr);
			2:
				Escribir "Restar fracciones";
				RestarFracciones(num1,den1,num2,den2,numr,denr);
				EscribirFraccion(numr,denr);
			3:
				Escribir "Multiplicar fracciones";
				MultiplicarFracciones(num1,den1,num2,den2,numr,denr);
				EscribirFraccion(numr,denr);
			4:
				Escribir "Dicidir fracciones";
				DividirFracciones(num1,den1,num2,den2,numr,denr);
				EscribirFraccion(numr,denr);
			5:
				
			De Otro Modo:
				Escribir "Opci�n incorrecta";
		FinSegun
		
	Hasta Que opcion=5;
FinProceso
