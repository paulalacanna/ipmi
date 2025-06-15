//https://youtu.be/Fi1UJkkT2Tw
PImage img;
color c1;  

void setup() {
  size(800, 400); 
  img=loadImage("imagen 1.jpg");
  c1 = color(255); 
  strokeWeight(20); 
}

void draw() {
   image(img, 0, 0, 400, 400); 
   fill(c1);
  rect(400, 0, 400, 400); //
  stroke(0);
  strokeWeight(18);
 
  for (int i = 0; i <5 ; i++) {
    line(410, 8 + i * 40, 590, 8 + i * 40); // Dibuja líneas horizontales arriba
  }
  for (int i = 0; i <5; i++) {
    line(615, 200 + i * 43, 800, 200 + i * 43); // Dibuja líneas horizontales abajo
}
  for (int i = 0; i < 5; i++) {
    int xPos = 595 + i * 45;
    line(xPos, 0, xPos, 200); // Dibuja líneas verticales arriba
  }
  for (int i = 0; i < 5; i++) {
    int xPos = 408 + i * 40;
    line(xPos, 400, xPos, 210); // Dibuja líneas verticales abajo
  }

 dibujarCentroConForAnidado(600, height / 2);
}


int cantidadDeCirculos() {
   return int(map(height, 0, width, 4, 8));
}

void dibujarCentroConForAnidado(float posX, float posY) {
  int cantidad = cantidadDeCirculos(); 
  //for anidado 
  for (int fila = 0; fila < 1; fila++) {
    for (int i = cantidad; i > 0; i--) {
    if (i % 2 == 0) { // 
      fill(0); // 
    } else { // 
      fill(255); //
   
      if ( (key == 'g')) { //si apretas g color verde
    fill(0,255,0);
    strokeWeight(2);
  
   }else if ( (key == 'b')){ //si apretas b color azul
    fill(0,0,255);
    strokeWeight(2);}
    
    else if ( (key == 'i')){ //si apretas i color rosa
    fill(255, 105, 180);
    strokeWeight(2);}
   
    else if ( (key == 'l')){ //si apretas i color rosa
    fill(255, 255, 0);
    strokeWeight(2);}
    }
    {noStroke();
}
    ellipse(posX, posY, i * 40, i * 40);
  }
  }
}



// Cambia el color del fondo cuando movés el mouse
void mouseMoved() {
  c1 = color(random(255), random(255), random(255));
}

// Reinicia el fondo a blanco cuando presionás la tecla 'r'
void keyPressed() {
  if (key == 'r' ) { 
    c1 = color(255);
  }
}
