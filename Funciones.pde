void perso1(float x_, float y_) {
    pushStyle();
    image (perso[2], x_, y_);
    popStyle();
}
void perso (PImage perso,PImage perso1,float x3_, float y3_, float x4_, float y4_){
   image (perso, x3_,y3_);
   image (perso1, x4_,y4_);
}
void pantalla1 (PImage imagen, float a1_, float a2_){
  image (imagen, a1_, a2_);
 }

void pantallas(PImage fondo, PImage texto, PImage iconos, float x_, 
   float y_, float x1_, float y1_, float x2_, float y2_) {
   image (fondo, x_, y_);
   image (texto,x1_, y1_);
   image (iconos, x2_, y2_);
}
boolean creditos (float c1_, float c2_, float c3_, float c4_){ 
   if (mouseX >= c1_ && mouseX <= c2_ && mouseY >= c3_ && mouseY <= c4_){
   return true;
}else{
  return false;
  }
}
void dibujoRect (PImage iconos,float r1_, float r2_, float r3_, float r4_){
   fill (59,2,13);
   rect(r1_, r2_,r3_,r4_,10);
   image (iconos, r1_+30,r2_+10);
}
