//(3,4,5) rectangulo,escaleno
//(7,7,9.8994949366117) rectangulo,is�sceles

Proceso TipoTriangulo
	Definir ladoA,ladoB,ladoC Como Real;
	Escribir Sin Saltar "Introduce longitud lado A:";
	Leer ladoA;
	Escribir Sin Saltar "Introduce longitud lado B:";
	Leer ladoB;
	Escribir Sin Saltar "Introduce longitud lado C:";
	Leer ladoC;
	
	//Pit�goras
	Si ladoA^2+ladoB^2 = ladoC^2 O ladoB^2+ladoC^2 = ladoA^2 O ladoC^2+ladoA^2 = ladoB^2 Entonces
		Escribir "Triangulo Rectangulo";
	FinSi
	//is�sceles
	Si (ladoA=ladoB y ladoA<>ladoC) O (ladoB=ladoC y ladoB<>ladoA) O (ladoC=ladoA y ladoC<>ladoB) Entonces
		Escribir "Triangulo Is�sceles";
	SiNo
		//equil�tero
		Si ladoA=ladoB Y ladoA=ladoC Entonces
			Escribir "Triangulo Equilatero";
		SiNo
			Escribir "Triangulo Escaleno";
		FinSi
	FinSi
FinProceso
