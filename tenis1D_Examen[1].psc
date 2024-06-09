//Nombre: Eli Noe Herrera Loria
//Fecha: 24.10.2023
//*****Funcionees*****
Funcion resultado <- actualiza(posicion, velocidad, tiempo)
	//Funcion que actualiza la posicion de un objeto en 1D
	Definir resultado como entero
	resultado = redon(posicion + velocidad * tiempo);
FinFuncion

Funcion resultado <- miRender(posicion, largo)
	//Funcion  que renderiza/grafica el objeto
	Definir resultado como cadena
	Definir indice Como Entero
	
	//Dibujar el espacio en donde se va a mover
	//el objeto
	Para indice <- 1 Hasta largo Hacer
		//Detectar si el objeto colisiona con las paredes
		si indice = posicion Entonces
			resultado = resultado + "o";
		SiNo
			resultado = resultado + " "; 
		FinSi
	Fin Para
FinFuncion

//**********PROGRAMA PRINCIPAL**********
Algoritmo tenis1D
	//Programa de tennis en 1D con dos bolitas
	Imprimir "=========================";
	Imprimir "* Juego de tennis en 1D con dos bolitas*";
	Imprimir "Presiona cualquier tecla para comenzar";
	Imprimir "=========================";
	
	//Esperamos la tecla para iniciar
	Esperar Tecla
	
	//Definimos las variables a utilizar
	Definir bolita1_posicion, bolita1_velocidad, bolita1_largo Como Entero
	Definir bolita2_posicion, bolita2_velocidad, bolita2_largo Como Entero
	definir ti, tf, dt Como Real
	definir linea_bolita1, linea_bolita2 como cadena
	
	//Asignar los valores a las variables
	//valores de la primera bolita
	bolita1_largo = 25;
	bolita1_posicion = 1
	bolita1_velocidad = 10
	
	//valores de la segunda bolita
	bolita2_largo = 25;
	bolita2_posicion = 50
	bolita2_velocidad = 10
	
	tf = 100;
	dt = 0.1;
	
	Para ti = 0 con paso dt hasta tf Hacer
		
		bolita1_posicion = actualiza(bolita1_posicion, bolita1_velocidad, dt);
		bolita2_posicion = actualiza(bolita2_posicion, bolita2_velocidad, dt);
		
		//primer bolita
		//cambia la velocidad despues de chocar con la pared
		si bolita1_posicion <= 1 Entonces
			bolita1_posicion = abs(bolita1_posicion);
			bolita1_velocidad= -1 * bolita1_velocidad;
		FinSi
		
		si bolita1_posicion > bolita1_largo Entonces
			bolita1_posicion = bolita1_largo - bolita1_posicion mod bolita1_largo;
			bolita1_velocidad = -1 * bolita1_velocidad;
		FinSi
		
		//Segunda bolita
		//cambia la velocidad despues de chocar con la pared
		si bolita2_posicion <= 1 Entonces
			bolita2_posicion= abs(bolita2_posicion);
			bolita2_velocidad = -1 * bolita2_velocidad
		FinSi
		
		si bolita2_posicion > bolita2_largo Entonces
			bolita2_posicion = bolita2_largo - bolita2_posicion mod bolita2_largo;
			bolita2_velocidad= -1 * bolita2_velocidad
		FinSi
		
		linea_bolita1 = "|" + miRender(bolita1_posicion, bolita1_largo)
		linea_bolita2 = miRender(bolita2_posicion, bolita2_largo) + "|"
		linea_bolita1 = linea_bolita1 + "|"
		
		Imprimir linea_bolita1, linea_bolita2
		Esperar 50 Milisegundos
		Limpiar Pantalla
		
	Fin Para
FinAlgoritmo