//################################################################################
//Calcular el per�metro y �rea de un rect�ngulo dada su base y su altura.
//################################################################################
//An�lisis
//Tenemos que leer la base y la altura del triangulo y calcular el per�metro y el 
//�reea
//Datos de entrada: base(real), altura(real)
//Informaci�n de salida: perimetro(real) y area(real)
//Variables: base, altura, perimetro y area (Real)
//################################################################################
//Dise�o
//1. Leer base y altura
//2. Calcular per�metro(2*base + 2*altura)
//3. Calcular area (base * altura
//4. Mostrar per�metro y area
//################################################################################

Proceso Rectangulo
	Definir base,altura,perimetro,area Como Real;
	Escribir "Introduce la base:";
	Leer base;
	Escribir "Introduce la altura:";
	Leer altura;
	perimetro <- 2 * base + 2 * altura;
	area <- base * altura;
	Escribir "El per�metro es ",perimetro," y el area es ",area;
FinProceso
