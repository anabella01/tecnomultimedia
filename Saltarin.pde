class Saltarin {
  //Campo
  float x, y;
  PImage perso;
  float vel = 8; 
  boolean saltando = false;

  //Constructor
  Saltarin( float x_, float y_ ) {
    x = x_;
    y = y_;
    perso = loadImage("Person_01.png");
  }

  //Métodos
  void dibujar() {
    image (perso, x, y);
  }

  void saltar() {
    if ( saltando ) {
      y = y - vel;
      vel = vel - 0.28; 


      if (y >= 100 ) { 
        y = 100;
        vel = 8;
        saltando = false;
      }
    }
  }
  void colisionar(Serpiente ser, Juego j, Fondo f_) {
    float x_ = ser.x;
    float x1_ = ser.x1;
    float x2_ = ser.x2;

    if (((x_ <= x+perso.width-10 && x_ >= x-8 ) || (x1_ <= x+perso.width-12 && x1_ >= x-3)
      || (x2_ <= x+perso.width-12 && x2_ >= x-3)) && y > 90) {
      j.estado="perdiste";
      ser.reset();
      f_.reset();
    }
  }

  void teclas() {
    if ( key == ' ' )
      saltando = true;
  }

  void movIzq() {
    if (keyCode == LEFT)
      x-=5;
  }
  void movDer() {
    if (keyCode == RIGHT)
      x+=5;
  }
  void reset() {
    x=70;
    y=100;
  }
}
