Algoritmo tour2 
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
		
		//  Pner 10 M de forma aleatoria y sin que se repitan
		para i=1 hasta 10 con paso 1 hacer 
			repetir 
				fila = Azar (10)+1
				columna  =Azar(10)+1
			hasta que matriz(fila, columna) = '.'
			matriz(fila, columna) = 'M'
		FinPara
		
		//Imprimo la matriz
		Para contFilas=1  Hasta 10 Con Paso 1 Hacer
			Para contColumnas=1 Hasta 10 Con Paso 1 Hacer
				Escribir Sin Saltar matriz[contFilas, contColumnas], " "
			Fin Para
			// [1,1], [1,2], ...
			escribir ""
		FinPara
		
FinAlgoritmo
