PImage[] imagenes = new PImage[3]; // Arreglo de imágenes
PFont fuente;                      // Fuente del texto
int pantalla = 0;                  // Número de pantalla actual
int tiempoCambio = 12000;          // Tiempo entre pantallas en milisegundos
int ultimoCambio;                 // Última vez que se cambió de pantalla
boolean mostrarReinicio = false;  // Si se debe mostrar el botón
color rojo = color(255, 0, 0);
color azul = color(0,0,255);
String palabra = "Dardos";
int posXnombre = 0;
int tamTexto = 1;
float x = 0;  // Inicia en el borde izquierdo
float y = 0;  // Inicia en el borde superior
float velocidad = 0.3;  // Velocidad de movimiento
PImage fondo;
float tamanoTexto = 10;  // tamaño inicial del texto
float incremento = 0.2;  // velocidad de crecimiento
float x1 = 0;
int opacidad = 255;
float xImg = -width; // Empieza fuera de la pantalla por la izquierda


void setup() {
  size(640, 480);
  
  
  // Cargar imágenes
  imagenes[0] = loadImage("imagen 1.jpg");
  imagenes[1] = loadImage("imagen2.jpg");
  imagenes[2] = loadImage("imagen 3.jpg");
  
   
  
  // Cargar fuente desde archivo .vlw (se genera con "Crear fuente")
  fuente = loadFont("CenturySchoolbook-Bold-48.vlw");
  textFont(fuente);
  
 ultimoCambio = millis(); // Tiempo inicial
}

void draw() {
  background(0);
 
  
  // Animación del texto según la pantalla
  fill(255);
  textAlign(CENTER);
  

 
  if (pantalla == 0) {
      if( tamTexto <= 110 ){  // ---------------------------------------CONDICIONAL!
    tamTexto = tamTexto + 1;  //simil frameCount, pero con variable
  }  //condiciona solo el size
  image(imagenes[0], 0, 0, width, height);
  textSize(tamanoTexto);
  fill(rojo);
  text("DARDOS", width/2, height/2);
  // aumenta tamaño lentamente
  tamanoTexto += incremento;


} else if (pantalla == 1) {
   // Texto que se mueve hacia la derecha
   image(imagenes[1], 0, 0, width, height);
     fill(0, opacidad); // negro con opacidad
    rect(0, 0, width, height);
    opacidad -= 0.5; // Reduce opacidad lentamente
fill(rojo);
    float x =width- (millis() / 40) % width;
   text("La mecánica del juego consiste en lanzar dardos a una diana que está dividida por segmentos y cada uno de ellos tiene asignada una puntuación. Gana evidentemente quien más puntos consiga. El juego de los dardos se puede jugar por equipos o de manera individual.",x,height/5,450,400);    
 textSize(28);


  
    
  } else if (pantalla == 2) {
   // Mueve el texto hacia el centro
  if (x < width / 7) {
    x += velocidad;  // Aumenta la posición horizontal
  }

  if (y < height / 5) {
    y += velocidad;  // Aumenta la posición vertical
  }
 // Dibujar imagen en movimiento
  image(imagenes[2], xImg, 0, width, height);
 if (xImg < 0) {
    xImg += 0.3; // Velocidad de entrada 
  }
  // Dibujar imagen en movimiento
  image(imagenes[2], xImg, 0, width, height);

  fill(rojo);
text("Historia de los dardos:Origen en Inglaterra, en la Edad Media.Soldados lo jugaban con lanzas pequeñas y tapas de barril como diana.Evolucionó en el siglo XX hasta convertirse en un deporte reglamentado.",x,y,450,400);
textSize(28); // Volver a tamaño normal para otros textos
    
 
  
    
     // Mostrar botón de reinicio
    mostrarReinicio = true;
    drawBoton();
  }
  
  // Cambio automático de pantalla cada 4 segundos
  if (millis() - ultimoCambio > tiempoCambio && pantalla < 3) {
    pantalla++;
    ultimoCambio = millis();
  }
}

void drawBoton() {
  fill(200);
  rect(width/2 - 50, height - 60, 100, 40);
  fill(0);
  text("Reiniciar", width/2, height - 35);
}

void mousePressed() {
  if (mostrarReinicio) {
    if (mouseX > width/2 - 50 && mouseX < width/2 + 50 &&
        mouseY > height - 60 && mouseY < height - 20) {
      pantalla = 0;
      mostrarReinicio = false;
      ultimoCambio = millis();
    }
  }
}
