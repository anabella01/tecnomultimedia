  /* tp1: Circulo Cromático
     Sistema RGB / Modelo de color usado HSB 
     RGB: Sintesis aditiva / Luz
 */
  
void setup(){
size(800,800);

colorMode(HSB);
colorMode(HSB, 360, 100, 100);

}

void draw(){
  
   background(0);
   
   //Triangulos
  strokeWeight(5);
  stroke(0,0,100,60);
  noFill();  
  triangle(width/2,150,250,height/2,550,height/2);
  strokeWeight(5);
  stroke(0,0,100,60);
  triangle(320,270,480,270,width/2,height/2);
  
  //Rectangulos
  rect(50,50,700,420);
  rect(50,500,280,240);
  rect(440,500,310,240);
  
  //Colores primarios R,G,B
  
  noStroke();
  smooth();
  fill(0,100,100);
  ellipse (width/2,150,100,100);
  fill(120,100,100);
  ellipse (250,height/2,100,100); 
  fill(240,100,100);
  ellipse (550,height/2,100,100);
  
  //Colores secundarios C,M,Y

  fill(60,100,100); 
  ellipse (320,270,75,75);
  fill(300,100,100); 
  ellipse (480,270,75,75); 
  fill(180,100,100); 
  ellipse (width/2,height/2,75,75); 

  
    //Colores terciarios 

  fill(30,100,100); 
  ellipse (360,215,25,25); 
  fill(330,100,100); 
  ellipse (440,215,25,25); 
  fill(90,100,100); 
  ellipse (292,330,25,25);
  fill(270,100,100); 
  ellipse (508,330,25,25);
  fill(150,100,100); 
  ellipse (width/2.4,height/2,25,25); 
  fill(210,100,100); 
  ellipse (width/1.7,height/2,25,25);
 
  
  //La mezcla de dos colores primarios da como resultado un color secundario
  //R
  fill(0,100,100);
  ellipse (width/8,550,50,50);
  //G
  fill(120,100,100);
  ellipse (width/8,620,50,50);
  //B
  fill(240,100,100);
  ellipse (width/8,690,50,50);
  
  noStroke();
  //B
  fill(240,100,100);
  ellipse (190,550,50,50);
  //R
  fill(0,100,100);
  ellipse (190,620,50,50);
  //G
   fill(120,100,100);
  ellipse (190,690,50,50);
  
  //M
  fill(300,100,100);
  ellipse (275,550,50,50);
  //Y
   fill(60,100,100);
  ellipse (275,620,50,50);
  //C
    fill(180,100,100);
  ellipse (275,690,50,50);
  
  
  //+
  strokeWeight(3);
  stroke(360);
  line(140,550,150,550);
  line(145,545,145,555);
  
  line(140,620,150,620);
  line(145,615,145,625);
  
  line(140,690,150,690);
  line(145,685,145,695);
  
  //=
  line(225,545,235,545);
  line(225,555,235,555);
  
  line(225,615,235,615);
  line(225,625,235,625);
  
  line(225,685,235,685);
  line(225,695,235,695);
  
   //BLACK AND WHITE
   strokeWeight(1);
   stroke(360);
   //W
   fill(0,0,100);
   ellipse (520,620,120,120);
   //B
   fill(0,0,0);
   ellipse (665,620,120,120);
   
   
}
