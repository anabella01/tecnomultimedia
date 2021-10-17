int cant = 10;
Smile [] smiles =new Smile[cant];
Smile [] smiles2 =new Smile[cant];

void setup(){
  size (800,600);
  
  for (int i = 0; i < smiles.length; i++){
   smiles [i] = new Smile (color (255,255,0), random(width),random (50,height-50),100,0.8);
   smiles2 [i] = new Smile (color (0,255,0), random(width),random (50,height-50),100,0.8);
 }
}


void draw(){
  
  background (255,0,0);

 
 for (int i =0; i < smiles.length; i++){

 smiles[i].dibujar();
 smiles[i].movimiento();
 smiles2[i].dibujar();
 smiles2[i].movimiento();
 

}
}
