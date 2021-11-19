class Juego {
  //Campo
  String estado;
  Saltarin s;
  Fondo f;
  PFont tipo;
  PImage[] pant = new PImage [3];
  Serpiente se;
  boolean menu = true, ganar = false, perder = false;

  //Constructor
  Juego() {
    cursor(HAND);
    s = new Saltarin(70, 100);
    f= new Fondo();
    estado="menu";
    se =new Serpiente();
    tipo = loadFont("VenturaEdding-Bold-48.vlw");
    textFont(tipo);
    for (int i = 0; i < pant.length; i++) {
      pant [i] = loadImage("pant_0" + i%3+ ".png");
    }
  }

  //Métodos
  void draw() {
    if (estado.equals("jugando")) {
      f.dibujofondo();
      f.vel();
      s.dibujar();
      s.saltar();
      se.vel();
      se.dibujoserpiente();
      s.colisionar(se, this, f);
      if (s.x > f.x1+ width*2) {
        estado="ganaste";
        f.reset();
        se.reset();
      }
    }

    if (estado.equals("ganaste")) {
      image (pant[00], 0, 0);
      rectMode(CENTER);
      stroke(255);
      strokeWeight(2);
      fill(25, 50, 220);
      rect(width/2.08, height/2.8, 200, 50);
      fill(255);
      textSize(40);
      text(" You Win :) ", width/2.8, height/2.45);
      s.reset();
    }
    if (estado.equals("perdiste")) {
      image (pant[01], 0, 0);
      rectMode(CENTER);
      stroke(255);
      strokeWeight(2);
      fill(25, 50, 220);
      rect(width/2.08, height/2.8, 200, 50);
      fill(255);
      textSize(40);
      text("Game Over :(", width/3, height/2.45);
      s.reset();
    }
    if (estado.equals("menu")) {
      image (pant[02], 0, 0);
      rectMode(CENTER);
      stroke(255);
      strokeWeight(2);
      fill(25, 50, 220);
      rect(width/2, height/3, 120, 50);
      fill(255);
      textSize(40);
      text("Jugar", width/2.32, height/2.6);
      textSize(30);
      fill(0);
      text("< Left | Right >", width/2.76, height/1.8);
      fill(255);
      text("< Left | Right >", width/2.8, height/1.8);
      fill(0);
      text("Jump : SpaceBar", width/2.76, height/1.5);
      fill(255);
      text("Jump : SpaceBar", width/2.8, height/1.5);
    }
  }
  void mousePressed() {
    if (estado.equals("menu")) {
      if (mouseX >= width/3+40 && mouseX <= (width/1.5)-40 && mouseY >= (height/2.9)-25 && mouseY <= (height/2.9)+25 ) {
        estado= "jugando";
      }//(width/2.08, height/2.8,200,50)
    } else if (estado.equals("perdiste")) {
      if (mouseX >= width/3 && mouseX <= (width/2)+100 && mouseY >= height/3.5 && mouseY <= (height/3)+25 ) {
        estado= "menu";
      }
    } else if (estado.equals("ganaste")) {
      if (mouseX >= width/3 && mouseX <= (width/2)+100 && mouseY >= height/3.5 && mouseY <= (height/3)+25 ) {
        estado= "menu";
      }
    }
  }
  void keyPressed() {
    s.teclas();
    s.movIzq();
    s.movDer();
  }
}
