//Nombre: Eli Noe Herrera Loria
//Fecha: 25.10.2023

//Funcion que muestra un texto en pantalla y lo borra a los 2 segundos
Funcion impr(txt)
	//Pedimos el texto que se mostrara
	Imprimir 'Escribe lo que quieresq¿ que aparezca';
	leer txt;
	
	//Imprimimos y a los 2 segundos lo borramos
	Imprimir txt;
	esperar 2 Segundos;
	Limpiar Pantalla;
FinFuncion

//Funcion que muestra la hora con segundos en tiempo real
Funcion hour(temp)
	Imprimir 'Presiona una tecla';
	esperar tecla;
	
	mientras verdadero hacer
		esperar 1 Segundos;
		Limpiar Pantalla;
		temp = ConvertirATexto(HoraActual());
		
		//Separamos por horas minutos y segundos
		hora = Subcadena(temp, 0, 2);
		minutos = Subcadena(temp, 3,4);
		seconds = Subcadena(temp, 5,7);
		
		//Imprimimos lo separado anterior
		Imprimir hora, ':', minutos, ':', seconds;
		
		
	FinMientras
	
FinFuncion

//Funcion que hace una cuenta regresiva y luego hace boooom
Funcion BOOM(n)
	
	//Pedimos el numero que hara la cuenta regresiva
	Imprimir 'Ingresa un numero para hacer BOOM';
	leer n;
	
	//Hacemos el contador para la cuenta regresiva
	para i=n hasta 1 Hacer
		
		Imprimir i;
		esperar 1 segundos;
		Limpiar Pantalla;
		
	Finpara
	Imprimir 'BOOOOOOOOOM!!!!!!';
FinFuncion

Funcion resultado <- actualiza(posicion, velocidad, tiempo)
	
	//Funcion que actualiza la posicion de un objeto en 1D
	Definir resultado como entero;
	resultado = redon(posicion + velocidad * tiempo);
	
	
FinFuncion


Funcion resultado <- miRender(posicion, largo, txt)
	//Funcion que renderiza/grafica el objeto
	Definir resultado como cadena;
	Definir indice como entero;
	
	
	//Dibujar el espacio donde se va a mover el objeto
	Para indice = 1 hasta largo Hacer
		//Detectar si el objeto colisiona con las paredes
		
		Si indice = posicion Entonces
			resultado = resultado + txt;
		SiNo
			resultado = resultado + ' ';
		FinSi
	FinPara
	
	
FinFuncion

//*********PROGRAMA PRINCIPAL******************//

Algoritmo C30Teleprompter
	//Programa de tennis en 1D
	Imprimir '=========================';
	Imprimir '* TELEPROMPTER *';
	Imprimir '=========================';
	Imprimir '* TELEPROMPTER *';
	Imprimir 'Presiona cualquier tecla para iniciar';
	
	//Espermos la tecla para iniciar
	Esperar tecla;
	
	//Definimos nuestras variables a utilizar
	Definir posicion, velocidad, largo Como Entero;
	Definir ti, tf, dt como real;
	Definir linea como cadena;
	
	leer txt;
	//Asignar valores a las variables
	largo = 100;
	posicion = 1;
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
		
		linea = miRender(posicion, largo, txt);
		
		Esperar 200 Milisegundos;
		Limpiar Pantalla;
		
		Imprimir linea;
		Imprimir 'Posicion: ', posicion;
		linea = '';
	FinPara
	
FinAlgoritmo