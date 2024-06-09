//Nombre: Eli Noe Herrera Loria
//Fecha: 20.10.2023
//*****FUNCION*****
Funcion resultado <- actualiza(posicion, velocidad, tiempo)
	
	//Funcion que actualiza la posicion de un objeto en 1D
	Definir resultado como entero;
	resultado = redon(posicion + velocidad * tiempo);
	
	
FinFuncion


Funcion resultado <- miRender(posicion, largo)
	//Funcion que renderiza/grafica el objeto
	Definir resultado como cadena;
	Definir indice como entero;
	
	//Dibujar pared inicial
	resultado = resultado + '|';
	
	//Dibujar el espacio donde se va a mover el objeto
	Para indice = 1 hasta largo Hacer
		//Detectar si el objeto colisiona con las paredes
		
		Si indice = posicion Entonces
			resultado = resultado + 'o';
		SiNo
			resultado = resultado + ' ';
		FinSi
	FinPara
	
	//Dibujar la pared final
	resultado = resultado + '|';
	
FinFuncion

//*********PROGRAMA PRINCIPAL******************//

Algoritmo C29Tennis1D
	//Programa de tennis en 1D
	Imprimir '=========================';
	Imprimir '* JUEGO DE TENNIS EN 1D *';
	Imprimir '=========================';
	Imprimir '* JUEGO DE TENNIS EN 1D';
	Imprimir 'Presiona cualquier tecla para iniciar';
	
	//Espermos la tecla para iniciar
	Esperar tecla;
	
	//Definimos nuestras variables a utilizar
	Definir posicion, velocidad, largo Como Entero;
	Definir ti, tf, dt como real;
	Definir linea como cadena;
	
	//Asignar valores a las variables
	largo = 40;
	posicion = azar(10);
	velocidad = 10;
	tf = 100;
	dt = 0.1;
	
	Para ti = 0 con paso dt hasta tf Hacer
		posicion = actualiza(posicion, velocidad, dt);
		//Cambia la velocidad despues de chocar con la pared
		si posicion <= 1 Entonces
			posicion = abs(posicion);
			velocidad = -1 * velocidad;
			
		FinSi
		
		si posicion > largo Entonces
			posicion = largo - posicion mod largo;
			velocidad = -1 * velocidad;
		FinSi
		
		linea = miRender(posicion, largo);
		
		Esperar 20 Milisegundos;
		Limpiar Pantalla;
		
		Imprimir linea;
		Imprimir 'Posicion: ', posicion;
		linea = '';
	FinPara
	
FinAlgoritmo
