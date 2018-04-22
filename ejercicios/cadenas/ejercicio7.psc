//################################################################################
//Pide una cadena y dos caracteres por teclado (valida que sea un car�cter), 
//sustituye la aparici�n del primer car�cter en la cadena por el segundo car�cter.
//################################################################################
//An�lisis
//Leo un cadena y dos caracteres, recorro la cadena, si encuentro un car�cter 
//igual al primer car�cter que he leido lo sustituyo por el segundo. Para ello voy 
//a ir copiando los caracteres de la cadena a otra cadena, cuando tenga que 
//sustituir un caracter por otro copiar� el segundo.
// Datos de entrada: Cadena de caracteres, el car�cter a buscar y a reemplazar.
// Informaci�n de salida: Cadena con el car�cter indicado cambiado por el segundo.
// Variables:cad, newcad, car_buscar, car_sustituir (car�cter)
//################################################################################

Proceso SustituirCaracter
	Definir cad,newcad, car_buscar,car_sustituir Como Caracter;
	Definir posicion Como Entero;
	newcad<-"";
	Escribir Sin Saltar "Introduce una cadena:";
	Leer cad;
	Repetir
		Escribir Sin Saltar "Introduce un caracter a buscar:";
		Leer car_buscar;
	Hasta Que Longitud(car_buscar)=1;
	Repetir
		Escribir Sin Saltar "Introduce un caracter para sustituir:";
		Leer car_sustituir;
	Hasta Que Longitud(car_sustituir)=1;
	
	
	Para c<-0 hasta Longitud(cad)-1 Hacer
		Si Subcadena(cad,c,c)=car_buscar Entonces
			newcad<-concatenar(newcad,car_sustituir);
		SiNo
			newcad<-concatenar(newcad,Subcadena(cad,c,c));
		FinSi
	FinPara
	Escribir "La cadena invertida es ",newcad;
FinProceso
