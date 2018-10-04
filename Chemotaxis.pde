Bacteria[] Bardiel; 
//PImage img = "";
void setup()   
 {    
   size(500,500);
   Bardiel = new Bacteria[100];
   for(int i = 0; i < 100; i++)
   {
      Bardiel[i] = new Bacteria(); 
   }
 }   
void draw()   
 {    
  bg();
 	fill(0,20);
  rect(0,0,width,height);
  for (int i=0; i < Bardiel.length; i++)
  {
      Bardiel[i].walk();
      Bardiel[i].show();
  }
 }  
void keyPressed()
{
  redraw();
}  
class Bacteria    
 {     
   int myX, myY, myC, b1, b2;
   Bacteria()
   {
     myX = (int)(Math.random()*500);
     myY = (int)(Math.random()*500);
     myC = color(0,0,137,220);
     b1 = 1;
     b2 = 3;
   }
   void walk()
   {
     if (mouseX > myX)
       myX = myX + (int)(Math.random()*5)-b1;
     else
       myX = myX + (int)(Math.random()*5)-b2;
     if (mouseY > myY)
       myY = myY + (int)(Math.random()*5)-b1;
     else
       myY = myY + (int)(Math.random()*5)-b2;
       
     if (mousePressed)
      {
       myX = myX + (int)(Math.random()*5)-b2;
      }
   }
   void show()
   {
     strokeWeight(0.5);
     fill(myC);
     ellipse(myX, myY, 10,10);
   }
 }    
void bg()
{
  fill(100); 
  rect(0,450,500,50);
  fill(#F4F51B);
  for (int z=0; z < 501; z+=80)
  {
    rect(z,470,50,10);
  }
}
