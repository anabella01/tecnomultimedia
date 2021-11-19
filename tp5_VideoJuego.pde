/*
ANABELLA MUÑOZ CANDIA 
 TMM1 | FBA | UNLP | 2021
 Link youtube: https://www.youtube.com/watch?v=z-IDQcH30lI */

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
