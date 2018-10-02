Bacteria[] jezebel; 
void setup()   
 {    
   size(500,500);
   jezebel = new Bacteria[50];
   for(int i = 0; i < 50; i++)
   {
      jezebel[i] = new Bacteria(); 
   }
 }   
void draw()   
 {    
 	background(0);   
  for (int i=0; i < jezebel.length; i++)
  {
    for (int j = 25; j > 0; j--)
    {
      jezebel[i].show();
      jezebel[i].walk();
    }
  }
 }  
void mousePressed()
{
   redraw(); 
}
class Bacteria    
 {     
   int myX, myY, myC;
   Bacteria()
   {
     myX = myY = 250;
     myC = color(255,247,214,200);
   }
   void walk()
   {
     myX = myX + (int)(Math.random()*7)-3;
     myY = myY + (int)(Math.random()*7)-3;
   }
   void show()
   {
     strokeWeight(0.5);
     fill(myC);
     ellipse(myX, myY, (int)(Math.random()*40)-81, (int)(Math.random()*40)-81);
   }
 }    
