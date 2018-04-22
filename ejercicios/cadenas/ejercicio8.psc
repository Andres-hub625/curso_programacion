//################################################################################
//Realizar un programa que lea una cadena por teclado y convierta las may�sculas a 
//min�sculas y viceversa.
//################################################################################
//An�lisis
//Leo un cadena, la recorro y voy copiando cada car�cter a otra cadena, teniendo en 
// cuenta que si es may�sculas la convierto a min�sculas y viceversa.
// Datos de entrada: Cadena de caracteres
// Informaci�n de salida: Cadena con el cambio de may�sculas a minusculas y viceversa.
// Variables:cad, newcad  (car�cter)
//################################################################################
Proceso ConvertirMayMin
	Definir cad,newcad Como Caracter;
	Definir c Como Entero;
	newcad<-"";
	Escribir Sin Saltar "Introduce una cadena:";
	Leer cad;
		
	Para c<-0 hasta Longitud(cad)-1 Hacer
		Si Subcadena(cad,c,c)=Mayusculas(Subcadena(cad,c,c)) Entonces
			newcad<-concatenar(newcad,Minusculas(Subcadena(cad,c,c)));
		FinSi
		Si Subcadena(cad,c,c)=Minusculas(Subcadena(cad,c,c)) Entonces
			newcad<-concatenar(newcad,Mayusculas(Subcadena(cad,c,c)));
		FinSi
	FinPara
	Escribir "La cadena convertida es: ",newcad;
FinProceso
