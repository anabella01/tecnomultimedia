/* Link youtube: no es la mejor explicación :p (tuve que grabar el video varias veces)
https://www.youtube.com/watch?v=ANYPzMiXnqc     → disculpen la longitud pero no llego a hacerlo de nuevo, se puede poner en 2x de velocidad*/

int cant=10,trans,contador,an,al;

float tam=1,grosor=1.5,rot=1,rot1=0.5,tamMax=257;

color  col1,col2,col3,col4,s=100,b=100,t,r,black=0;

boolean click=false;

void setup(){
  
  size (800,800);
  
  colorMode(HSB,360,100,100);
  frameRate(30);
  smooth();
 }

void draw (){
  
  background(black);
  
   //asigno un valor a las variables
   an= 15;
   al= 15;
   trans=50;

//sumo px a las variables//animación 
   rot += 0.1;
   tam += 0.4;
   grosor += .002;
   
 
 for (int i=0 ; i <= cant ;i++){ //columnas

 for (int a=0 ; a <= cant ;a++){//filas
 
 // Estas variables son mapeadas dentro del for ya que las uso dentro del mismo.
 float col1 = map (tam,0,360,270,300);
 float col2 = map (tam,0,360,60,90);
 float col3 = map (tam,0,360,180,210);
 float t = map (tam,0,100,0,267);
 float col4 = map (tam,0,360,150,200);
 
//uso lerpColor para generar efecto strobo, cuando hago click y reduzco al minimo las ellipses de 0 a 1 se genera esa transición de colores de un azul200 a rojo360/0.
 color r = lerpColor (200,360,tam/2);
 
 // Para generar rotación en el centro de cada ellipse uso translate + rotate y en las coordenadas uso las variables i y a.
 
    noFill();
    pushMatrix();
    strokeWeight(grosor);
    translate(i*(cant*7)+trans,a*(cant*7)+trans);
    rotate (sin(rot)*rot1);
 //en la función rotate uso sin(seno) que va de 1 a -1 y me permite hacer una oscilación, "un ida y vuelta" 
    ellipse(0,0,an,al+tam);
    ellipse(0,0,an-5+tam,al-5);
    
    ellipse(0,0,an+5,al+5);
    fill(col2,s,b);
    ellipse(0,0,an-10,al-10);
    popMatrix();

 //boton on/off
 
    stroke(0);
    rectMode(CENTER);
    fill(0,0,b,80);
    rect(770,20,40,20,50);
    fill(0);
    text("on/off",755,25);

noFill();
// condición para darle color a las ellipses. Tres grupos de colores. 
   if(i==0 && a ==1 ||i==2 && a ==1 ||i==4 && a ==1 ||i==6 && a ==1 ||i==8 && a ==1||i==10 && a ==1
   ||i==0 && a ==3 ||i==2 && a ==3 ||i==4 && a ==3 ||i==6 && a ==3 ||i==8 && a ==3||i==10 && a ==3
   ||i==0 && a ==5 ||i==2 && a ==5 ||i==4 && a ==5 ||i==6 && a ==5 ||i==8 && a ==5||i==10 && a ==5
   ||i==0 && a ==7 ||i==2 && a ==7 ||i==4 && a ==7 ||i==6 && a ==7 ||i==8 && a ==7||i==10 && a ==7
   ||i==0 && a ==9 ||i==2 && a ==9 ||i==4 && a ==9 ||i==6 && a ==9 ||i==8 && a ==9||i==10 && a ==9
   ||i==10 && a ==10||i==1 && a ==10 ||i==3 && a ==10||i==5 && a ==10||i==7 && a ==10 ||i==9 && a ==10 
   ){ 
    stroke(col3,s,b);
 }else if(i==1 && a==0 || i==3 && a==0 || i==5 && a==0 || i==7 && a==0 || i==9 && a==0 ||
    i==1 && a==2 || i==3 && a==2 || i==5 && a==2 || i==7 && a==2 || i==9 && a==2 
    || i==1 && a==4 || i==3 && a==4 || i==5 && a==4 || i==7 && a==4 || i==9 && a==4 
    || i==1 && a==6 || i==3 && a==6 || i==5 && a==6|| i==7 && a==6 || i==9 && a==6
    || i==1 && a==8 || i==3 && a==8 || i==5 && a==8 || i==7 && a==8 || i==9 && a==8  ){
    stroke(col2,s,b);
         
 }else{stroke (col1,s,b);}
 

            
// condición boolean//true or false, si hago click con el mouse → agrego una capa 
    if (click){
    
    pushMatrix();
    strokeWeight(grosor);
    translate(i*(cant*7)+trans,a*(cant*7)+trans);
    rotate (cos(rot)*0.5);
    stroke(0,0,b,t);
    fill(col4,s,b,t*2);
    ellipse(0,0,an,al+tam);
    stroke(0,0,b,t);
    fill(col4,s,b,t*2);
    ellipse(0,0,an-5+tam,al-5);
    fill(r,s,b);
    ellipse(0,0,an+5,al+5);
     fill(col3,s,b);
    ellipse(0,0,an-10,al-10);
    popMatrix();
    noFill();
    
// condición para darle color a las ellipses. Tres grupos de colores. 
    
   if(i==0 && a ==1 ||i==2 && a ==1 ||i==4 && a ==1 ||i==6 && a ==1 ||i==8 && a ==1||i==10 && a ==1
   ||i==0 && a ==3 ||i==2 && a ==3 ||i==4 && a ==3 ||i==6 && a ==3 ||i==8 && a ==3||i==10 && a ==3
   ||i==0 && a ==5 ||i==2 && a ==5 ||i==4 && a ==5 ||i==6 && a ==5 ||i==8 && a ==5||i==10 && a ==5
   ||i==0 && a ==7 ||i==2 && a ==7 ||i==4 && a ==7 ||i==6 && a ==7 ||i==8 && a ==7||i==10 && a ==7
   ||i==0 && a ==9 ||i==2 && a ==9 ||i==4 && a ==9 ||i==6 && a ==9 ||i==8 && a ==9||i==10 && a ==9
   ||i==10 && a ==10||i==1 && a ==10 ||i==3 && a ==10||i==5 && a ==10||i==7 && a ==10 ||i==9 && a ==10 
   ){ 
     stroke(col3,s,b);
     
    }else if(i==1 && a==0 || i==3 && a==0 || i==5 && a==0 || i==7 && a==0 || i==9 && a==0 ||
    i==1 && a==2 || i==3 && a==2 || i==5 && a==2 || i==7 && a==2 || i==9 && a==2 
    || i==1 && a==4 || i==3 && a==4 || i==5 && a==4 || i==7 && a==4 || i==9 && a==4 
    || i==1 && a==6 || i==3 && a==6 || i==5 && a==6|| i==7 && a==6 || i==9 && a==6
    || i==1 && a==8 || i==3 && a==8 || i==5 && a==8 || i==7 && a==8 || i==9 && a==8  ){
          stroke(col2,s,b);
    
          }else{
        
      stroke (col3,s,b);}

    // si presiono s or S se reduce el tamaño de las ellipses 
 }
   if (keyPressed ){
if ((key == 's')||(key == 'S'))   {
      tam -= .05;
  }
}
   // si presiono r or R reset de las variables
if (keyPressed){
if ((key == 'r')||(key == 'R'))   {
    tam=1;
    rot=1;
    grosor=1.5;
   contador = 0;
  }
}

   // si presiono a or A incremento el tamaño de las ellipses afectadas y el contador vuelve 0
if (keyPressed ){
if ((key == 'a')||(key == 'A'))   {
        tam +=.02;
    contador = 0;
   }
  } 
  
   // las ellipses pueden reducir su tamaño hasta 0 //limite
  if (tam < 0 ) { 
  tam=1;}
 }
 
 // Asigne un tamaño max. para tam. de ellipses, si llega a ese tamMax. la variable vuelve al valor de origen al igual que el grosorde linea
   if (tam > tamMax ) { 
  tam=1;
grosor=1.5;}
   
 //println(contador,tam);
 contador ++;
  if ((contador % 3000)==0){
   tam=1;
   rot=1;
   grosor=1.5;
} else if (contador > 3000){
  contador = 0;
   }
  }
 }
 
  void mousePressed (){
    if ((mouseX > 745 && mouseX < 795 ) && 
       (mouseY < 30 && mouseY > 10)){
   click = !click;
 } }
