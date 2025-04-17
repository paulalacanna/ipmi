PImage miObjetoFavorito;

void setup(){ 
  size( 800, 400 );  
  background(200); 
  
 miObjetoFavorito = loadImage("mitazafavorita_1.png");
}
void draw(){  
  background( 200 );
  
  noStroke();
  fill(80,50,30);
  ellipse(600,340,500,185);
  fill(255, 255, 100); 

noFill();
fill(255, 224, 189);
  stroke(173,216,230);
  strokeWeight(5);
  ellipse(600, 190, 200, 18);
  
noFill();
fill(255,255,100);
stroke(255,255,100);
strokeWeight(5);
arc(600, 200, 199, 210, 0, PI);


fill(255,80,0);
stroke(255,80,0);
arc(600,260,120,60,0,PI);

fill(255);
stroke(0);
ellipse(600,235, 90,55);

fill(0);
ellipse(580, 235,30,35);
ellipse(620,235,30,35);

fill(0,100,255);
ellipse(580,235,18,18);
ellipse(620,235,18,18);

 image( miObjetoFavorito, 0,0,400,400);  

  strokeWeight( 5);
  line( 400, 0, 400, 400 );
  
 
  println( mouseX + " / " + mouseY );
}

void mouseMoved(){  
  line( mouseX, 0, mouseX, 400 );
  line( 0, mouseY, 800, mouseY );  
}
