// Link YouTube : https://www.youtube.com/watch?v=r0_jIEyxwnw

//Anabella Muñoz Candia

int p1 = 0;

color black;
PImage[]imagen = new PImage [14];
PImage[]fondo = new PImage [11];
PImage[]perso = new PImage [20];
PImage[]texto = new PImage [16];
PImage[]iconos = new PImage [12];

float posX,x;
float posY,y;


void setup () {
  size (600, 300);

  colorMode (HSB, 360, 100, 100);
  black = color (0);
  
  posX=width;
  posY=height;
  x =0;
  y=0;
  
  for (int i = 0; i < fondo.length; i++) {
    fondo [i] = loadImage("Fondo-" + i%11 + ".png");
  }
   for (int i = 0; i < imagen.length; i++) {
    imagen [i] = loadImage("imagen_" + i%14 + ".png");
   imagen[i].resize( int(600), int(300) );
  }

  for (int i = 0; i < perso.length; i++) {
    perso [i] = loadImage("Perso_" + i%20 + ".png");
  }

  for (int i = 0; i < iconos.length; i++) {
    iconos [i] = loadImage("iconos_" + i%12 + ".png");
  }
  for (int i = 0; i < texto.length; i++) {
    texto [i] = loadImage("texto_" + i%16 + ".png");
  }
}

void draw() {
  background (black);
  noStroke();
 
  //inicio
 
 
 if (p1==0) {
   pantallas(fondo[0], texto[0], iconos[2],x,y,posX/3.8, posY/1.85,posX/2, posY/1.6);
   perso (perso [1],perso[2],posX/1.5, posY/4.5,posX/3.8, posY/6.2);

  }else if (p1==1){
   pantallas(fondo[1], texto[1], iconos[2],x,y,posX/4.3, posY/3.5,posX/2, posY/2.5);
   perso (perso [2],perso[3],posX/6.5, posY/2.25,posX/1.3, posY/1.5);

  }else if (p1==2) {
    pantallas(fondo[2], texto[2], iconos[3],x,y,posX/4.5, posY/7,posX/2.5, posY/2.2);
    perso1 (posX/6.5, posY/2.25);
    
  }else if (p1==3) {
    pantallas(fondo[3], texto[15], iconos[4],x,y,posX/4.5, posY/1.6,posX/4.5, posY/3.8);
    perso1 (posX/8, posY/2.2);
      
  }else if (p1==4) {
    pantallas(fondo[4], texto[3], iconos[11],x,y,posX/20, posY/14,posX/3.2, posY/2.3);
    perso (perso [2],perso[4],posX/2.2, posY/1.8,posX/3.1, posY/1.8);
    
  }else if (p1==5) {
    pantalla1 (imagen[0],x,y);
    
  }else if (p1==6) {
    pantalla1 (imagen[1],x,y);
    
  }else if (p1==7) {
    pantalla1 (imagen[2],x,y);
    
  }else if (p1==8) {
  
    pantalla1 (imagen[3],x,y);
    dibujoRect (iconos[2],posX/1.15, posY/1.2,posX/8,posY/8);
   if (creditos (posX/1.15, posX/0.5,posY/1.2,posY/0.8)){
      p1=18;
     }
  
  }else if (p1==9) {
    pantalla1 (imagen[4],x,y);
  
  }else if (p1==10) {
    pantalla1 (imagen[5],x,y);
    
  }else if (p1==11) {
    pantalla1 (imagen[6],x,y);
    
  }else if (p1==12) {
    pantalla1 (imagen[7],x,y);
   
     
  }else if (p1==13) {
    pantalla1 (imagen[8],x,y);
    
  }else if (p1==14) {
    pantalla1 (imagen[12],x,y);
    dibujoRect (iconos[2],posX/1.15, posY/1.2,posX/8,posY/8);
   if (creditos (posX/1.15, posX/0.5,posY/1.2,posY/0.8)){
      p1=18;}
  }else if (p1==15) {
    pantalla1 (imagen[9],x,y);
    
  }else if (p1==16) {
    pantalla1 (imagen[10],x,y);
    
  }else if (p1==17) {
    pantalla1 (imagen[11],x,y);
 
 }else if (p1==18){
   pantalla1 (imagen[13],x,y);
   dibujoRect (iconos [2],posX/1.15, posY/1.2,posX/8,posY/8);
}
}

void mousePressed() {
//inicio
  if (mouseX>posX/2 && mouseX<posX/1.9 && mouseY>posY/1.6 
    && mouseY<posY/1.5 && p1==0) {
    p1=1;
//nos encontramos una serpiente    
  } else if (mouseX>posX/2 && mouseX<posX/1.9 && mouseY>posY/2.5 
    && mouseY<posY/2.3 && p1==1) {
    p1=2;
//Snake      
  } else if (mouseX > posX/2.4 && mouseX<posX/1.75 && mouseY> posY/2.1
    && mouseY<posY/1.85 && p1==2) {
    p1=3;
//seleccion el pasillo    
  } else if (mouseX > posX/4.3 && mouseX<posX/2.8 && mouseY >= posY/1.52
    && mouseY <= posY/1.45 && p1==3) {
    p1=4;
    
 //--------------------------------------------------------------------------
 
//seleccion el patio
  }else if (mouseX > posX/2.2 && mouseX<posX/1.8 && mouseY >= posY/1.56
    && mouseY <= posY/1.45 && p1==3) {
    p1=10;
  }else if (mouseX >= posX/8 && mouseX <= posX/3 && mouseY >= posY/3
    && mouseY <= posY/2 && p1==10) {
    p1=11;
  }else if (mouseX >= posX/1.05 && mouseX <= posX/1.01 && mouseY >= posY/1.35
    && mouseY <= posY/1.25 && p1==11) {
    p1=12; 
//inundacion volver al bosque
  }else if (mouseX >= posX/2 && mouseX <= posX/0.8 && mouseY >= posY/1.2
    && mouseY <= posY/0.9 && p1==12) {
    p1=0;
  }else if (mouseX >= posX/1.8 && mouseX <= posX/1.05 && mouseY >= posY/2.6
    && mouseY <= posY/2 && p1==10) {
    p1=13;
//Ayudamos a escapar a medusa
  }else if (mouseX >= posX/1.05 && mouseX <= posX/1.01 && mouseY >= posY/1.30
    && mouseY <= posY/1.25 && p1==13) {
    p1=14;
    
 //--------------------------------------------------------------------------
    
//seleccion el jardin    
  }else if (mouseX > posX/1.8 && mouseX<posX/1 && mouseY >= posY/1.52
    && mouseY <= posY/1.45 && p1==3) {
    p1=15;
//Atenea y poli
  }else if (mouseX >= posX/1.8 && mouseX <= posX/1.05 && mouseY >= posY/2.8
    && mouseY <= posY/2 && p1==15) {
    p1=16;
  }else if ( mouseX >= posX/1.15 && mouseX <= posX/1.02 && mouseY >= posY/1.22
    && mouseY <= posY/1.1 && p1==16) {
    p1=0;
//Atenea enojada busca a Poseidon    
  }else if (mouseX >= posX/8 && mouseX <= posX/2.5 && mouseY >= posY/4
    && mouseY <= posY/1.7 && p1==15) {
    p1=17;    
  }else if ( mouseX >= posX/1.05 && mouseX <= posX/1.01 && mouseY >= posY/1.35
    && mouseY <= posY/1.25 && p1==17) {
    p1=14;  
 
//el pasillo  
  }else if (mouseX > posX/5.8 && mouseX<posX/4.2 && mouseY >= posY/1.44
    && mouseY <= posY/1.35 && p1==3) {
    p1=4;
//cena con perseo     
  }else if (mouseX >= posX/1.6 && mouseX <= posX/1.4 && mouseY >= posY/2.3
    && mouseY <= posY/2 && p1==4) {
    p1=5;
//Perseo + cerveza     
  }else if (mouseX >= posX/3 && mouseX <= posX/1.3 && mouseY >= posY/3.4
    && mouseY <= posY/2.8 && p1==5) {
    p1=6;
//Perseo desmayo   
  }else if (mouseX >= posX/3 && mouseX <= posX/1.3 && mouseY >= posY/3.6
    && mouseY <= posY/2.8 && p1==6) {
    p1=7;
  
//Ayudamos a escapar a Medusa  
  }else if (mouseX >= posX/8 && mouseX <= posX/2.5 && mouseY >= posY/4
    && mouseY <= posY/1.7 && p1==7) {
    p1=8;
 //volver al bosque  
  }else if (mouseX >= posX/2 && mouseX <= posX/0.8 && mouseY >= posY/4
    && mouseY <= posY/1.7 && p1==7) {
      p1=9;
  }else if (mouseX >= posX/1.05 && mouseX <= posX/1.01 && mouseY >= posY/1.30
    && mouseY <= posY/1.25 && p1==9) {
      p1=14;
  }else if (creditos (posX/1.4, posX/0.5,posY/1.3,posY/0.8)&& p1==8) {
    p1=18;
  }else if (creditos (posX/1.4, posX/0.5,posY/1.3,posY/0.8)&& p1==18) {
    p1=0;}
  
}
