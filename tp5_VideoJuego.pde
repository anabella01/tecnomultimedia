/*
ANABELLA MUÑOZ CANDIA | TP_FINAL
 TMM1 | FBA | UNLP | 2021
 Link youtube: Lo agrego esta noche*/

Juego j;

void setup() {
  size(600, 300);
  j = new Juego();
}

void draw() {
  background(0);

  j.draw();
}

void keyPressed() {
  j.keyPressed();
}
void mousePressed() {
  j.mousePressed();
}
