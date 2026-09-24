Algoritmo Tour6
	Dimensionar matriz[5,8] 
		// Poner puntos en todos los espacios
		Para contFilas = 1 Hasta 5 con Paso 1 Hacer
			Para contColumnas=1  Hasta 8 Con Paso 1 Hacer
				// contFilas=1
				//contColumnas=1
				matriz[contFilas, contColumnas] = 'L'
			Fin Para
		Fin Para
		
		Definir fila Como Entero
		definir columna como entero 
		
		// poner lgares aleatorios para los que estan ocupados
		para i=1 hasta 15 con paso 1 hacer 
			repetir 
				fila = Azar (5)+1
				columna  =Azar(8)+1
			hasta que matriz(fila, columna) = 'L'
			matriz(fila, columna) = 'O'
		FinPara
		
		// imprimir la matriz
		Para contFilas=1  Hasta 5 Con Paso 1 Hacer
			Para contColumnas=1 Hasta 8 Con Paso 1 Hacer
				Escribir Sin Saltar matriz[contFilas, contColumnas], " "
			Fin Para
			escribir ""
		FinPara
		
		
		//calculo de las plazas que estan libres y ocupadas
		espaciosL <- 0
		Para contFilas = 1 Hasta 5 Con Paso 1 Hacer
			Para contColumnas = 1 Hasta 8 Con Paso 1 Hacer
				Si (matriz[contFilas, contColumnas] == 'L') Entonces
					totalL = totalL + 1
				Fin Si
			Fin Para
		Fin Para
		
		// escribir numero de plazas libres
		escribir "el numero de plazas libres: "
		escribir totalL // de las plazas que estan libres 
		
		// numero de plazas ocupadas 
		plazasO <- 40 - totalL
		escribir "el numero de plazas ocupadas: "
		escribir plazasO
		
		
FinAlgoritmo
