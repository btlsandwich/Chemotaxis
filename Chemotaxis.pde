Bacteria[] Bardiel; 
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
 	fill(0,20);
  rect(0,0,width,height);
  for (int i=0; i < Bardiel.length; i++)
  {
      Bardiel[i].walk();
      Bardiel[i].show();
  }
 }  
class Bacteria    
 {     
   int myX, myY, myC;
   Bacteria()
   {
     myX = (int)(Math.random()*500);
     myY = (int)(Math.random()*500);
     myC = color(137,0,137,220);
   }
   void walk()
   {
     if (mouseX > myX)
       myX = myX + (int)(Math.random()*5)-1;
     else
       myX = myX + (int)(Math.random()*5)-3;
     if (mouseY > myY)
       myY = myY + (int)(Math.random()*5)-1;
     else
       myY = myY + (int)(Math.random()*5)-3;
       
     if (mousePressed)
      {
       myX = myX + (int)(Math.random()*5)-2;
       myY = myY + (int)(Math.random()*5)-2;
      }
   }
   void show()
   {
     strokeWeight(0.5);
     fill(myC);
     ellipse(myX, myY, 20,20);
   }
 }    
