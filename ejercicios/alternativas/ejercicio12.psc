Proceso CalcularYearBisiesto
	Definir year Como Entero;
	Escribir Sin Saltar "Introduce el a�o:";
	Leer year;
	Si (year % 4 = 0 Y NO (year % 100 = 0)) O year % 400 = 0 Entonces
		Escribir "A�o bisiesto.";
	SiNo
		Escribir "A�o no bisiesto.";
	FinSi
FinProceso
