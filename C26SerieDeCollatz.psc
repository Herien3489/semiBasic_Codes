//nOMBRE: Eli Noe Herrera Loria
//Fecha: 10.10.2023
Algoritmo C26SerieDeCollatz2
	
	//Pedimos el numero que seguira la serie de collatz
	Escribir 'Ingresa el numero a registrar';
	leer n;
	
	//Definimos nuestras variables
	definir lista Como Caracter;
	dimension lista[n];
	
	//Guardamos e valor de n en otra variable que se utilizara despues
	m=n
	
	//Iniciamos el ciclo para la secuencia de collatz
	para  i = 1 Hasta n Hacer
		
		//Destinamos del valor de i en la variable m para que cada vuelta aumente 1
		m = i;
		
		//Aqui reiniciamos nuestro grafo para cada vuelta del ciclo
		grafo = "*";
		
		//Creamos la secuencia de collatz
		mientras m <> 1 hacer
			
			si m es par Entonces
				//Cuando es par se divide entre 2
				m = m / 2;
				
			SiNo
				//Cuando es impar se multiplica por 3 y se le suma 1
				m = m * 3 + 1;
				
			FinSi
			
			//Para cada vuelta del ciclo se le suma 1 estrellita "*" a el grafo
			grafo = grafo + "*";
			
		FinMientras
		
		//Asignamos el valor del grafo a el lugar correspondiente de la lista "i"
		lista[i] = grafo;
		
	Finpara
	
	//Creamos un ciclo para imprimir el resultado de las graficas en la lista guardada
	para  t = 1 hasta n Hacer
		Imprimir t, ": ", lista[t];
	FinPara
FinAlgoritmo
