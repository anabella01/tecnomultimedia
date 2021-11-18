class Serpiente {
  //Campo
  float x, x1, x2, y, y1, y2; 
  float vel;
  PImage[] Snake = new PImage [3];

  //Constructor
  Serpiente() {

    x=width+50;
    x1=width+300;
    x2=width+500 ;
    y=200;
    y1=210;
    y2=220;
    vel=2;

    for (int i = 0; i < Snake.length; i++) {
      Snake [i] = loadImage("Snake_0"+ i%3 + ".png");
    }
  }

  //Métodos
  void vel() {
    x -= vel;
    x1 -= vel;
    x2 -= vel;
  }

  void dibujoserpiente() {
    image (Snake[00], x, y);
    image (Snake[02], x2, y2);
    image (Snake[01], x1, y1);

    if (x==0) {
      x=width+x;
    } else if ( x1==0 ) {
      x1=width+x1;
    } else if (x2==0) {
      x2=width +x2;
    }
  }
  void reset() {
    x=width+50;
    x1=width+300;
    x2=width+500 ;
  }
}
