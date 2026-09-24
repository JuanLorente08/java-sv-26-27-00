Algoritmo Tour4
	Dimensionar matriz[10,10]
		// Poner puntos en todos los espacios
		Para contFilas=1 Hasta 10 con Paso 1 Hacer
			Para contColumnas=1  Hasta 10 Con Paso 1 Hacer
				// contFilas=1
				//contColumnas=1
				matriz[contFilas, contColumnas] = '.'
			Fin Para
		Fin Para
		
		definir fila Como Entero
		definir columna como entero
		
		//  Poner 15 A de forma aleatoria sin que se repitan
		para i=1 hasta 15 con paso 1 hacer 
			repetir 
				fila = Azar (10)+1
				columna  =Azar(10)+1
			hasta que matriz(fila, columna) = '.'
			matriz(fila, columna) = 'A'
		FinPara
		
		// imprimi matriz
		Para contFilas=1  Hasta 10 Con Paso 1 Hacer
			Para contColumnas=1 Hasta 10 Con Paso 1 Hacer
				Escribir Sin Saltar matriz[contFilas, contColumnas], " "
			Fin Para
			escribir ""
		FinPara
		
		// contar A
		totalA <- 0
		Para contFilas = 1 Hasta 10 Con Paso 1 Hacer
			Para contColumnas = 1 Hasta 10 Con Paso 1 Hacer
				Si (matriz[contFilas, contColumnas] == 'A') Entonces
					totalA = totalA + 1
				Fin Si
			Fin Para
		Fin Para
		
		escribir totalA
		
		
FinAlgoritmo
