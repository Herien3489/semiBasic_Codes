//Nombre: Eli Noe Herrera Loria
//Fecha: 06.10..2023
Algoritmo C24listaPositivoNegativo
	//Pedimos cuantos nuumeros quiere comparar
	Escribir 'Cuantos nuemros quieres comparar';
	leer n;
	
	//Dimensionamos con n la lista
	Dimensionar lista[n];
	
	//Creamos variables vacias para ir sumando
	est_negativos = "";
	est_positivo = "";
	
	//Creamos el ciclo para leer los numeros
	para indice = 1 hasta n Hacer
		//Pedimos los numeros que verificara
		Escribir 'Escribe el numero';
		leer lista[indice];
		
		//creamos una condicion para sumar una estrella cada vez que la condicion sea cierta
		si lista[indice] < 0 Entonces
			est_negativos = est_negativos + "*";
		SiNo
			//Si la condicion no es cierta suma uno a los positivos
			est_positivo = est_positivo + "*";
		FinSi
	FinPara
	
	//Imprimimos nuestros resultados
	Imprimir '-----Histograma-----';
	Imprimir 'Positivos: ', est_positivo;
	Imprimir 'Negativos: ', est_negativos;
FinAlgoritmo
