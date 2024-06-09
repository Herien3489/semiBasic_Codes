Algoritmo C25SerieDeCollatzMetodo2
	//Programa que realice la serie de collatz
	//Pedimos al usuario el numero que utilizara 
	Escribir 'Ingresa el numero para iniciar la serie';
	leer n;
	//Guardamos el valor inicial para usarlo mas adelante
	m=n;
	//Dimensionamos la lista con muchos digitos
	Dimensionar lista[100000];
	//Creamos un string vacio
	graf = "";
	cont = "*";
	dimensionar grafos[n];
	
	//Creamos un ciclo para que cuando n llegue a 1 pare
	mientras n <> 1 hacer
		//Creamos un contador para nuestra lista
		i = i + 1;
		
		
		//Condicionamos para saber si n es par o impar
		si n es par
			
			n = n / 2;
		SiNo
			
			n =  n * 3 + 1;
		FinSi
		para n=n hasta i Hacer
			t = t + 1;
			
			si n es par
				
				n = n / 2;
			SiNo
				
				n =  n * 3 + 1;
			FinSi
			
			
		FinPara
		
		//Guardamos el valor de n en el lugar de la lista
		lista[i] = n;
		
		//Imprimimos todas las operaciones que realice n guardadas en la lista
		Imprimir lista[i];
		
	FinMientras
	
	//Creamos un ciclo para imprimir el numero de asteriscos que tendra el histograma
	para t=1 hasta i Hacer
		//Al grafo vacio le concatenamos i veces una estrellita
		graf = graf + "*";
	FinPara
	
	//Cuando el ciclo no de una vuelta imprime solo una estrellita
	si i = 0 entonces
		Imprimir m, ": *";
	SiNo
		//Cuando es mayor de 0 imprime la cantidad de asteriscos + uno
		imprimir m,": ",graf + "*";
	finsi
	
FinAlgoritmo