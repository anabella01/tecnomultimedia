class Aventura {

  float x, y;
  PImage[] imagen = new PImage[19];
  int p;
  Juego j;
  Aventura() {
    x=0;
    y=0;
    p=0;

    j = new Juego();

    for (int i = 0; i < imagen.length; i++) {
      imagen [i] = loadImage("imagen_" + i%11 + ".png");
    }
  }

  void dibujoAventura() {
    //logica de estado
    if (p==0) {
      image (imagen[0], x, y);
    } else if (p==1) {
      image (imagen[1], x, y);
    } else if (p==2) {
      image (imagen[2], x, y);
    } else if (p==3) {
      image (imagen[3], x, y);  //portales
    } else if (p==4) {
      j.ejecutarJuego();
    } else if (p==5) {
      image (imagen[4], x, y);
    } else if (p==6) {
      image (imagen[5], x, y);
    } else if (p==7) {
      image (imagen[6], x, y);
    } else if (p==8) {
      image (imagen[7], x, y);
    } else if (p==9) {
      image (imagen[8], x, y);
    } else if (p==10) {
      image (imagen[10], x, y);//portada final
    } else if (p==11) {
      image (imagen[9], x, y);
    }


    println(p);
  }

  void mousePressed() {
    j.mousePressed(this); // le hago reconocer a class juego el obj. "a" como "padre"
    
    if (mouseX >290 && mouseX < 310 && mouseY >166 && mouseY <182 && p==0 ) {
      p=1;
    } else if (mouseX >290 && mouseX < 310 && mouseY >166 && mouseY <182 && p==1 ) {
      p=2;
    } else if (mouseX >254 && mouseX < 345 && mouseY >166 && mouseY <182 && p==2 ) {
      p=3;
    } else if (mouseX >137 && mouseX < 312 && mouseY >90 && mouseY < 190 && p==3 ) {  //portal1
      p=4;
    } else if (mouseX >254 && mouseX < 345 && mouseY >90 && mouseY < 190 && p==3 ) {  //portal2
      p=4;
    } else if (mouseX >375 && mouseX < 460 && mouseY >90 && mouseY < 190 && p==3 ) {  //portal3
      p=4;
    } else if (mouseX >360 && mouseX < 410 && mouseY >134 && mouseY < 148 && p==5) {
      p=6;
    } else if (mouseX >265 && mouseX < 370 && mouseY >90 && mouseY < 112 && p==6) {
      p=7;
    } else if (mouseX >265 && mouseX < 370 && mouseY >90 && mouseY < 112 && p==7) {
      p=8;
    } else if (mouseX >38 && mouseX < 250 && mouseY >100 && mouseY < 145 && p==8) {
      p=9;
    } else if (mouseX >345 && mouseX < 565 && mouseY >100 && mouseY < 145 && p==8) {
      p=11;
    }//poseidon
    else if (mouseX >572 && mouseX < 585 && mouseY >225 && mouseY < 242 && p==11) {
      p=9;
    }//poseidon
    else if (mouseX >522 && mouseX < 585 && mouseY >254 && mouseY < 276 && p==9) {
      p=10;
    } else if (mouseX >276 && mouseX < 320 && mouseY >252 && mouseY < 270 && p==10) { // vuelve a inicir la aventura
      p=0; 
    }
  }

  void keyPressed() {
    
    j.keyPressed(); // Invoco al KeyPressed de class Juego
    
   /* if (keyCode==RIGHT && p==0) {   // Deprecated
      p=1;
    } else if (keyCode==RIGHT && p==1) {
      p=2;
    }*/
  }

  void cambiarPa(int x) {  //metodo para cambiar de pantalla desde class juego
    p = x;
  }
}
