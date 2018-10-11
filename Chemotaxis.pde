Bacteria[] Bardiel; 
int b1, b2, r;
void setup()   
 {    
   size(400,400);
   b1 = (int)(Math.random()*400);
   b2 = (int)(Math.random()*400);
   r = 0;
   Bardiel = new Bacteria[100];
   for(int i = 0; i < 100; i++)
   {
      Bardiel[i] = new Bacteria(); 
   }
 }   
void draw()   
 {    
 	fill(0,10);
  rect(0,0,width,height);
  for (int i=0; i < Bardiel.length; i++)
  {
      Bardiel[i].walk();
      Bardiel[i].show();
  }
}
class Bacteria    
 {     
   int myX, myY, myC1, myC2, myC3;
   Bacteria()
   {
     myX = (int)(Math.random()*400);
     myY = (int)(Math.random()*400);
     myC1 = color(219,250,252,220);
     myC2 = color(204,250,189,220);
     myC3 = color(252,222,252,220);
   }
   void walk()
   {
     if (b1 > myX)
       myX = myX + (int)(Math.random()*5)-1;
     else
       myX = myX + (int)(Math.random()*5)-3;
     if (b2 > myY)
       myY = myY + (int)(Math.random()*5)-1;
     else
       myY = myY + (int)(Math.random()*5)-3;
     if (dist(myX,myY,b1,b2) == 0) {
       for (int i=255; i>0; i--)
       { 
          noStroke();
          fill(230-i,0,230-i);
          ellipse(b1, b2, i, i);
       }
       for (int z=0; z<100; z++)
       {
          myC1 = myC2 = myC3 = 0;
       }
       }
   }
   void show()
   {
     noStroke();
     if (Math.random() < 0.33)
       fill(myC1);
     else if (Math.random() > 0.66)
       fill(myC2);
     else 
       fill(myC3);
     ellipse(myX, myY, 10,10);
   }
}
