PFont myType;
PImage Blueberry, nora, natalie, jude, david, rachel;

boolean clicBoton =false;

float tam, tam1, tam2, tono0, tono1, tono2, tono3, tono4, tono5, tono6, tono7,grosor;
float posX = 170, posX0 = 20, posX1 = 330,posX1b = 30,velX1 = 2.6, velX2 = 2,velX3 = 1.5,velX4 = 1.3;
float posX3 = 240, posX4 =5, posX5 = 210, posX6 = 20, posX7 = 220;

int contador, p1 = 0, trans = 70, oP=2, pY, pX;

color ColorFondo = 0, b = 90;

void setup() { 
  
  size (600, 400);
  colorMode (HSB, 360, 100, 100);
  frameRate(30);
  
  cursor (HAND);
  //Carga de tipografia 

  myType = loadFont("ACaslonPro-BoldItalic-200.vlw"); 

  //Carga de imagen

  Blueberry = loadImage ("MBN.jpg");
  nora = loadImage ("NoraJones01.jpg");
  natalie = loadImage ("NataliePortman.jpg");
  jude = loadImage ("JudeLaw.jpg");
  rachel = loadImage ("RachelWeisz.jpg");
  david = loadImage ("DavidStrathairn.jpg");


  textFont(myType);
  imageMode(CENTER);
}

void draw () {
  
  background (ColorFondo);
  noStroke ();
  smooth();
  
//Ancho y alto de pantalla

   pX = width;
   pY = height;
   
//Cambio de tamaño y tono con → map

  tam = map(mouseX, 0, 100, 0, 18); //tam " MY "
  tam1 = map(mouseX, 0, 100, 0, 10); //tam " Blueberry "
  tam2 = map(mouseX, 0, 100, 0, 10); //tam " Nights "
  
  tono0 = map (mouseX, 0, 360,280, 300);
  tono1 = map (posX, 0, 360,150, 320);
  tono2 = map (posX1, 0, 360, 260, 330);
  
  tono3 = map (posX3,0, 360, 250, 310);  //Nora
  tono4 = map (posX4, 0, 360, 250, 320); //Natalie
  tono5 = map (posX5, 0, 360, 270, 350); // Jude 
  tono6 = map (posX6, 0, 360, 280, 360); //Rachel
  tono7 = map (posX7, 0, 360, 220, 320); //David
  
//Stroke botón con → dist 

  grosor = dist (mouseX,mouseY,pmouseX,pmouseY);
  
// MY_BLUEBERRY_NIGHT → p1 == 0

  if (p1 == 0) {
    tint(0,0,100,trans+10);
    image (Blueberry, pX/2, pY/2);
    
    if(mouseX>200){
    textSize (tam);
    fill (0, 0, b,trans);
    trans = trans + oP;
    text("My", posX0, 290);
    
    textSize (tam1);
    fill (tono1,85,95,trans);
    text("Blueberry", posX, pY-110);
    
    textSize (tam2+20);
    fill (0, 0, b,trans);
    text("Nights.", posX,  pY-50);
    
    posX0 += + velX1;
    if (posX0 > 180 ){
      posX0 += - velX1;
    }
    posX += + velX1;
    if (posX > 330){
      posX += - velX1;
    }
     
   if (clicBoton){
    fill (0,0,10);
    textSize(tam);
    text("My",posX0 + 2,  pY-110);
    
    fill (tono1,85,95);
    text("My",posX0 + 3,  pY-110);
   
    textSize (tam1);
      fill (0,0,10);
    text("Blueberry", posX+2,  pY-110);
    
    fill (0,0,b);
    text("Blueberry", posX+3,  pY-110);
    
    textSize (tam2+20);  
    fill (0,0,b);
    text("Nights.", posX+2, pY-50);
    
    fill (tono1,85,95);
    text("Nights.", posX+3, pY-50);
   
   }
    }
    
//A film by Wong Kar Wai   → p1 == 1

   } else if (p1 == 1) {
    image (Blueberry, pX/2,pY/2);
    fill (0, 0, random (b));
    textSize (60);
    text("A film by", posX1b, pY-110);
    fill (0, 0, random (b));
    text("Wong Kar Wai", posX1, pY-50); 
       
     posX1 += - velX1;
    if (posX1 < 120){
    posX1 += + velX1;
      }
      posX1b +=  + velX2;
    if (posX1b > 180){
    posX1b += - velX2;
      }
      
   if (clicBoton){
      fill (0,0,10);
      textSize (60);
      text("A film by", posX1b+2, pY-110);
      fill (tono2,85,95);
      textSize (60);
      text("A film by", posX1b+1, pY-110);
      
      fill (0, 0, 10);
      text("Wong Kar Wai", posX1-2, pY-50);
      fill (tono2,85,95);
      text("Wong Kar Wai", posX1-1, pY-50);
     }
    
//Nora Jones  → p1 == 2
  
 } else if (p1 == 2) {
    tint(0,0,100);
    image (nora, pX/2, pY/2);
    textSize (80);
    fill (0, 0,random(b));
    text("Nora Jones", posX3, pY-40); 
   
    posX3 += - velX2;
    if (posX3 < 70){
    posX3 += + velX2;
    }
    
   if (clicBoton){
     fill (0,0,10);
     textSize(80);
     text("Nora Jones",posX3-3, pY-40);
     
     fill (tono3,85,95);
     textSize(80);
     text("Nora Jones",posX3-2, pY-40);
     
       }
       
//Natalie Portman   → p1 == 3

  } else if (p1 == 3) {
     image (natalie,width/2, height/2);
     fill (0,0,random (b));
     textSize(70);
     text("Natalie Portman",posX4,pY-40);
     
    posX4 += + velX4;
    if (posX4 > 100){
    posX4 += - velX4;
  }
                  
  if (clicBoton){
    fill (0,0,10);
    textSize(70);
    text("Natalie Portman",posX4+3,pY-40);
    
    fill (tono4,85,95);
    textSize(70);
    text("Natalie Portman",posX4+2,pY-40);
   
    }
    
//Jude Law   → p1 == 4
     
  } else if (p1 == 4) {
    image (jude,pX/2, pY/2);
    fill (0,0,random (b));
    textSize(80);
    text("Jude Law",posX5,pY-40);
     
     posX5 += - 2;
  if (posX5 < 70){
     posX5 += + 2;
     }  
    
  if (clicBoton){
      fill (0,0,10);
      textSize(80);
      text("Jude Law",posX5-2,pY-40);
      
      fill (tono5,85,95);
      textSize(80);
      text("Jude Law",posX5-3,pY-40);
      
      }
      
//Rachel Weisz → p1 == 5

  } else if (p1 == 5) {
     image (rachel, pX/2, pY/2);
            
     fill (0,0,random (b));
     textSize(70);
     text("Rachel Weisz",posX6,pY-40);
     
     posX6 += + 2;
     if (posX6 > 180){
     posX6 += - 2;}
    
  if (clicBoton){
     fill (0,0,10);
     textSize(70);
     text("Rachel Weisz",posX6+2,pY-40); 
     
     fill (tono6,85,95);
     textSize(70);
     text("Rachel Weisz",posX6+1,pY-40); }
      
//David Strathairn  → p1 == 6 
     
   } else if (p1 == 6) {
     image (david,pX/2, pY/2);
     fill (0,0,random (b));
     textSize(70);
     text("David Strathairn",posX7,pY-40);
     
     posX7 += - 2;
  if (posX7 < 70){
     posX7 += + 2;
  }
   if (clicBoton){
    
     fill (0,0,10);
     textSize(70);
     text("David Strathairn",posX7-2,pY-40);
     
     fill (tono7,85,95);
     textSize(70);
     text("David Strathairn",posX7-1,pY-40);
   }
     
//Reset (al llegar al final de la secuencia vuelve a comenzar automaticamente)
     
} else if ((p1 >= 7) && (7 >= 0)){
   p1=0;
   posX= 170;
   posX0 = 20;
   posX1 = 330;
   posX1b = 30;
   velX1 = 2.6;
   velX2 = 2;
   velX3 = 1.5;
   velX4= 1.3;
   posX3 = 240;
   posX4 = 5;
   posX5 = 210;
   posX6 = 20;
   posX7 = 220;
   trans = 70;
   
//Reset KeyPressed (Si presiono 'r' 0 'R' en cualquier momento → vuelvo a iniciar)
}
if (keyPressed){
   if ((key == 'r')||(key == 'R'))   
   
   p1=0;
   posX= 170;
   posX0 = 20;
   posX1 = 330;
   posX1b = 30;
   velX1 = 2.6;
   velX2 = 2;
   velX3 = 1.5;
   velX4= 1.3;
   posX3 = 240;
   posX4 = 5;
   posX5 = 210;
   posX6 = 20;
   posX7 = 220;
   trans = 70;
   contador = 0;
}
// Botón → si presiono el Botón agrego capa de color a los títulos

  smooth();
  stroke (tono0,b,b-20);
  strokeWeight (grosor);
  fill(tono0 ,85,95);
  ellipse (570,30,20,20);
  
  textSize(20);
  fill (ColorFondo);
  text ("Click",546,60);
  fill(tono0 ,85,95);
  text ("Click",545,60);


//imprimir contador en consola

  println(contador);
  
//Contador + suma de pantalla

   contador ++;
  if ((contador % 100)==0){
   p1=p1+1;
} else if (contador > 700){
  contador = 0;
  }
  
//Si hago click en botón → True or False/ False or True...  

  } void mousePressed (){
    
     if ((mouseX > 560 && mouseX < 580 ) && 
       (mouseY < 40 && mouseY > 20)){
        clicBoton = !clicBoton;
     }
   }
