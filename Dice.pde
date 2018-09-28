void setup()
{
  noLoop();
  size(600, 600);
  background(195, 245, 233);
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
  boolean roll;
  int myX, myY;
  Die(int x, int y) //constructor
  {
  myX = x;
  myY = y;
  }
  void roll()
  {
    //if(Math.random()==.1)
      // roll = true;
      // else
      // roll = false;
  }
  //void diceColor()
  //{
    //int redX = ((int)(Math.random()*256));
    //int greenX = ((int)(Math.random()*256));
    //int blueX = ((int)(Math.random()*256));
    //fill(redX, greenX, blueX);
 // }
  void show()
  {
    noStroke();
    fill(255, 255, 255);
    rect(myX, myY, 40, 40);
    fill (0);
    ellipse(myX+20, myY+20, 8, 8);
    //int a = (int) ((Math.random()*6)+1);
    //if (roll == true)
      //ellipse(myX, myY, 10, 10);
    
  }
}
