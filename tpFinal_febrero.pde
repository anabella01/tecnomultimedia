/*
ANABELLA MUÑOZ CANDIA | TP_FINAL
 TMM1 | FBA | UNLP | FEBRERO*/

//Juego j;
Aventura a;

void setup() {
  size(600, 300);
  // j = new Juego();
  a = new Aventura();
}

void draw() {
  background(0);

  //j.draw();
  a.dibujoAventura();
}

void keyPressed() {
  //j.keyPressed();
  a.keyPressed();
}
void mousePressed() {
  //j.mousePressed();
  a.mousePressed();
}
