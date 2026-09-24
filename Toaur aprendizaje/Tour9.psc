Algoritmo Tour9
		Dimensionar matriz[8,8] 
		// Poner puntos en todos los espacios
		Para contFilas = 1 Hasta 8 con Paso 1 Hacer
			Para contColumnas=1  Hasta 8 Con Paso 1 Hacer
				// contFilas=1
				//contColumnas=1
				matriz[contFilas, contColumnas] = '~'
			Fin Para
		Fin Para
		
		definir fila Como Entero
		definir clolumna como entero 
		
		// establezco la variable aleatoria
		para i=1 hasta 5 con paso 1 hacer 
			repetir 
				fila = Azar (8)+1
				columna  =Azar(8)+1
			hasta que matriz(fila, columna) = '~'
			matriz(fila, columna) = 'X'
		FinPara
		
		// Juego en si de guerra de barcos
		impactos = 0
		Mientras impactos < 5 Hacer
			Escribir "Introduce la fila del disparo: "
			Leer dispf
			Escribir "Introduce la columna del disparo: "
			Leer dispc
			
			Si dispf >= 1 Y dispf <= 8 Y dispc >= 1 Y dispc <= 8 Entonces
				
				Si matriz[dispf, dispc] = 'B' Entonces
					Escribir "Tocado"
					matriz[dispf, dispc] = 'X'
					impactos = impactos + 1
					Escribir "Llevas ", impactos, " barcos hundidos."
				Sino 
					Si matriz[dispf, dispc] = 'X' Entonces
						Escribir "Ya has disparado aqui"
					Sino
						Escribir "Agua"
					FinSi
				FinSi
				
			Sino
				Escribir "Fuera de los parametros"
			FinSi
		FinMientras
		
FinAlgoritmo
