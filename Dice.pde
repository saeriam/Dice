void setup()
{
  noLoop();
  size(600, 600);
  background(#398DAA);
}
void draw()
{ 
  for(int y = 50; y <= 500; y+=50)
  {
    for (int x = 50; x <=500; x+=50)
    {
      Die marisa = new Die(x, y);
      marisa.roll();
      marisa.show();
    }
  }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  boolean oneDot;
  boolean threeDots;
  boolean fourDots;
  boolean fiveDots;
  boolean sixDots;
  int myX, myY;
  Die(int x, int y) //constructor
  {
  myX = x;
  myY = y;
  }
  void roll()
  {
    int dotNum = (int)((Math.random()*6)+1);
    if(dotNum == 1)
       oneDot = true;
    if(dotNum == 2)
       oneDot = false;
    
    if(dotNum == 3)
       threeDots = true;
    
    if(dotNum == 4)
       fourDots= true;
       
    if(dotNum == 5)
       fiveDots = true;
    
    if(dotNum == 6)
      sixDots = true;
  }
  void diceColor()
  {
    int colors = (int)((Math.random()*2)+1);
    if (colors == 1)
      fill(247, 217, 237);
      else
      fill(217, 224, 247);
   }
   
  void show()
  {
    noStroke();
    fill(255);
    diceColor();
    rect(myX, myY, 40, 40, 10);
    fill (#2E3639);
    
    if (oneDot == true)
      oneDot();
    if (oneDot == false)
      twoDots();
        
    if(threeDots == true)
      threeDots();
    
    if(fourDots == true)
      fourDots();
      
    if(fiveDots == true)
      fiveDots();
      
    if(sixDots == true)
      sixDots();
      
  }
  
  void oneDot()
  {
    ellipse(myX+20, myY+20, 8, 8);
  }
  
  void twoDots()
  {
    ellipse(myX+10, myY+10, 8, 8);
    ellipse(myX+30, myY+30, 8, 8);
  }
  
  void threeDots()
  {
    oneDot();
    twoDots();
  }
  
  void fourDots()
  {
    twoDots();
    ellipse(myX+10, myY+30, 8, 8);
    ellipse(myX+30, myY+10, 8, 8);
  }
    
  void fiveDots()
  {
    oneDot();
    fourDots();
  }
  
  void sixDots()
  {
    fourDots();
    ellipse(myX+10, myY+20, 8, 8);
    ellipse(myX+30, myY+20, 8, 8);
  }
}
