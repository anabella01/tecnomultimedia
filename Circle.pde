class Smile {
 color c;
 float posX;
 float posY;
 float velX;
 float tam;
 
Smile (color c1_, float movX_, float movY_,float tam_,float velX_){
  
  c=c1_;
  posX=movX_;
  posY=movY_;
  tam = tam_;
  velX=velX_;
  
}

void dibujar (){
   //smile
    smooth();
    stroke (0);
    strokeWeight(3);
    fill (c);
    ellipse (posX,posY,tam,tam);
    //ojos
    noStroke();
    fill(0);
    ellipse (posX-20,posY-10,tam/10,tam/10);
    ellipse (posX+20,posY-10,tam/10,tam/10);
    //boca
    noFill();
    strokeWeight(3);
    stroke (0);
    bezier (posX-20,posY+15, posX-10,posY+30,posX+10,posY+30, posX+20,posY+15);
  
  if (posX < width/4){//smile
    smooth();
    stroke (0);
    strokeWeight(3);
    fill (0,0,255);
    ellipse (posX,posY,tam/1.5,tam/1.5);
    //ojos
    noStroke();
    fill(0);
    ellipse (posX-10,posY-5,tam/20,tam/20);
    ellipse (posX+10,posY-5,tam/20,tam/20);
    //boca
    noFill();
    strokeWeight(3);
    stroke (0);
    bezier (posX-10,posY+10, posX-5,posY+2,posX+5,posY+2, posX+10,posY+10);
  }
  
  if (posX > width/1.5){//smile
    smooth();
    stroke (0);
    strokeWeight(3);
    fill (255,0,255);
    ellipse (posX,posY,tam/1.6,tam/1.6);
    //ojos
    noStroke();
    fill(0);
    ellipse (posX-10,posY-5,tam/20,tam/20);
    ellipse (posX+10,posY-5,tam/20,tam/20);
    //boca
    noFill();
    strokeWeight(3);
    stroke (0);
    bezier (posX-10,posY+10, posX-5,posY+2,posX+5,posY+2, posX+10,posY+10);
  }
 
}
void movimiento (){
  posX += velX;
  if (posX >width-50){
  velX = -5;
 }
  if (posX < 50){
  velX = 5;}
  }

}
