Proceso Ejercicio3_Guia3
	
	Definir nro_lote Como Entero;  
	Definir medida_esperada,medida_producto Como Real;
	Definir error_abs, mayor_error_abs Como Real;
	Definir porcentaje_fallas_por_lote, porcentaje_total_fallas Como Entero;
	definir menor_cant_fallas, mayor_cant_fallas Como real;
	Definir lote_mayor_fallas, lote_menor_fallas Como Entero;
	Definir i Como entero; /// variable para el iterador
	
	menor_cant_fallas <- 100; /// va a ser 100 porque es el porcentaje maximo;
	///Contadores
	Definir contador_lotes,contador_productos Como Entero;
	Definir  contador_fallas, contador_total_fallas Como Entero;

	contador_fallas <- 0;
	contador_lotes <- 0;
	contador_total_fallas <- 0;
	contador_productos <- 0;
	Escribir "Ingrese el numero de lote";
	leer nro_lote;
	
	Escribir "Ingresar la medida esperada";
	leer medida_esperada;
	
	Mientras nro_lote <> 0 Hacer   /// creamos una variable de corte si es distinto a 0, se corta la ejecucion
		
		para i<-1 Hasta 10 Hacer
			
			Escribir "Ingrese la medida del producto ",i;
			leer medida_producto;
			
			error_abs <- abs(medida_esperada - medida_producto);
			
			///Buscarmos el mayor error absotulo
			si error_abs > mayor_error_abs Entonces 
				mayor_error_abs <- error_abs;
			FinSi
			
			///Contador de fallas
			si error_abs > 0 Entonces
				contador_fallas <- contador_fallas + 1;
				contador_total_fallas <- contador_total_fallas + 1;
			FinSi
		FinPara
		
		
		///Calcular el % de fallas por cada lote
		porcentaje_fallas_por_lote <- (contador_fallas / 10) * 100;
		
		///Contador de lotes en total y cantidad de productos procesados
		contador_lotes <- contador_lotes + 1;
		contador_productos <- contador_productos + 10; /// cada lote ingresa 10 productos para procesar
		
		///Calcular total de falla de todos los lotes
		porcentaje_total_fallas <- (contador_total_fallas / contador_productos) * 100;
		
		///Calcular la mayor cantidad de fallas y menor cantidad de fallas 
		si porcentaje_fallas_por_lote < menor_cant_fallas Entonces
			menor_cant_fallas <- porcentaje_fallas_por_lote;
			lote_menor_fallas<-nro_lote;
		FinSi
		
		si porcentaje_fallas_por_lote > mayor_cant_fallas Entonces
			mayor_cant_fallas <- porcentaje_fallas_por_lote;
			lote_mayor_fallas <- nro_lote;
		FinSi
		///informamos el mayor error absoluto y el porcentaje de fallas del lote
		Escribir "El mayor error absoluto es: ", mayor_error_abs;
		Escribir "El porcentaje de fallas del lote es de: ", porcentaje_fallas_por_lote, " % ";
		
		Contador_fallas <- 0; ///Reiniciamos el contaror de fallas a 0 
		
		Escribir "Ingrese el numero de lote";
		leer nro_lote;
	FinMientras
	
	///Informamos
	
	Escribir "La cantidad de lotes procesados fue de: ",contador_lotes, " lotes ";
	Escribir "  ";
	Escribir "El porcentaje total de fallas entre todos los lotes fue de: ", porcentaje_total_fallas, " % ";
	Escribir "  ";
	Escribir "El lote con menor cantidad de fallas es el: ",lote_menor_fallas;
	Escribir "   ";
	Escribir "El lote con mayor cantidad de fallas es el: ",lote_mayor_fallas;
	
FinProceso
