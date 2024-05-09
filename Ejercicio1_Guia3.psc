Proceso Ejercicio1_Guia3
	Definir nro_loteria Como Entero;
	Definir mayor_nro, menor_nro Como Entero;
	Definir promedio_nros_impares como real;
	Definir suma_nros_impares Como Entero;
	suma_nros_impares <- 0;
	
	///Contadores
	Definir contador_nros_pares, contador_nros_impares Como entero;
	contador_nros_pares <- 0;
	contador_nros_impares <- 0;
	
	
	
	Definir i Como Entero; /// variable para el contador
	
	para i <- 1 Hasta 10 Hacer
		Escribir "Ingrese el numero de la loteria";
		leer nro_loteria;
		
		/// Numeros par y impares
		si nro_loteria % 2 == 0 Entonces
			contador_nros_pares <- contador_nros_pares + 1;
		SiNo
			contador_nros_impares <- contador_nros_impares + 1;
			suma_nros_impares <- suma_nros_impares + nro_loteria;
			
			///Promedio numeros pares
			promedio_nros_impares <- suma_nros_impares / contador_nros_impares;
		FinSi
		
		///Buscar el mayor y el menor numero
		si nro_loteria > mayor_nro Entonces
			mayor_nro <- nro_loteria;
		SiNo
			menor_nro <- nro_loteria;
		FinSi
	FinPara
	
	Escribir "La cantidad de numeros pares es de: ", contador_nros_pares;
	Escribir "  ";
	Escribir "La cantidad de numeros impares es de: ", contador_nros_impares;
	Escribir "   ";
	Escribir "El promedio de los numeros impares es de: ", promedio_nros_impares;
	Escribir "   ";
	Escribir "El mayor numero de la loteria es el numero: ", mayor_nro;
	Escribir "  ";
	Escribir "El menor numero de la loteria es el numero: ", menor_nro;
FinProceso
