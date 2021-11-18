class Fondo {

  //Campo
  float x, y, x1; 
  float vel;
  PImage[] fondo = new PImage [2];

  //Constructor
  Fondo() {
    x=0;
    y=0;
    x1=width;
    vel=1;
    for (int i = 0; i < fondo.length; i++) {
      fondo [i] = loadImage("Fondo_0" + i%2 + ".png");
    }
  }
  //Métodos
  void vel() {
    x -= vel;
    x1-= vel;
  }

  void dibujofondo() {
    image (fondo[00], x, y);
    image (fondo[01], x1, y);

    if (x==0) {
      x1=width*3;
    } else if (x1==0) {
      x=width*3;
    }
  }

  void reset() {
    x=0;
    x1=width;
  }
}
