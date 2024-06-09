//Nombre: Eli Noe Herrera Loria
//Fecha: 16.10.2023

//Funcion Saludar
Funcion resultado <- Saludar(saludo)
	//Saludamos al usuario
	saludo = 'Hola guapote ;)';
	Imprimir saludo;
FinFuncion

//Funcion Maximo Comun Divisor
Funcion resultado <- MCD(n1, n2)
	//Definimos el resultado como real
	Definir resultado como real;
	
	//Repetimos
	Repetir
		
		//el resultado lo definiremos como n2
		resultado = n2;
		
		//n2 lo definimos como el modulo de n1 y n2
		n2 = n1 % n2;
		
		
		//Al valor del primer numero le asignamos el del resultado
		n1 = resultado;
		
		
	//Se repite mientras que sea diferente de 0
	Mientras Que n2 <> 0
	
FinFuncion


//Funcion Minimo Comun Multiplo
Funcion resultado <- mcm(n1, n2)
	//Utilizamos el teorema del mcm para poder encontrarlo
	resultado = (n1 * n2) / MCD (n1, n2);
	
FinFuncion


//Funcion que multiplica strings
Funcion resultado <- MultiplicarStrings(word, n)
	
	//Creamos un grafo que este vacio
	grafo = '';
	//Ciclamos n veces la impresion del grafo
	para i = 1 Hasta n Hacer
		grafo = grafo + word;
	FinPara
	
	//Imprimimos
	Imprimir grafo;
FinFuncion


Algoritmo C28SwitchCase
	
	//Preguntamos al usuario que quiere hacer
	Imprimir 'Que quieres hacer?';
	Imprimir '1: Saludo';
	Imprimir '2: Minimo Comun Multiplo';
	Imprimir '3: Maximo Comun Multiplo';
	Imprimir '4: Multiplicar String';
	leer inciso;
	
	//Hacemos un switch case para lo que dijite el usuario
	Segun inciso Hacer
		1:
			//Llamamos a la primera funcion
			resultado <- Saludar(saludo);
		2:
			//Llamamos a la segunda
			Imprimir 'Ingresa los numeros que scaran el minimo comun multilpo';
			leer n1; 
			Leer n2;
			resultado <- mcm(n1, n2);
			Imprimir resultado;
		3:
			//Llamamos a la tercera funcion
			Imprimir 'Ingresa 2 numeros para sacar el maximo comun divisor';
			leer n1, n2;
			resultado <- MCD(n1, n2);
			Imprimir resultado;
		4:
			//Llamamos a la cuarta funcion
			
			//Pedimos la palabra que quiere repetir
			Imprimir 'Ingresa la palabra';
			leer word;
			
			//Pedimos cuantas veces quiere repetirlo
			Imprimir 'Ingresa cuantas veces lo repetiras';
			leer n;
			//Llamamos a su funcion
			resultado <- MultiplicarStrings(word, n);
			Imprimir resultado;
	Fin Segun
	
FinAlgoritmo
