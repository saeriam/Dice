int dotNum;
void setup()
{
  noLoop();
  size(600, 600);
}
void draw()
{ 
  background(#398DAA);
  for(int y = 50; y <= 500; y+=50)
  {
    for (int x = 50; x <=500; x+=50)
    {
      Die marisa = new Die(x, y);
      marisa.show();
      marisa.roll(); 
    }
  }
  textSize(20);
  text("total number of dots: " + dotNum, 190, 570);
}
void mousePressed()
{
  dotNum = 0;
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int dotNum = (int)((Math.random()*6)+1);
  int myX, myY;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
  }
  void roll()
  {
     dotNum = (int)((Math.random()*6)+1);
     
     if(dotNum ==1)
    {
      oneDot();
      dotNum = dotNum +1;
    }
      else if (dotNum == 2)
      {
        twoDots();
        dotNum = dotNum +2;
      }
      else if (dotNum == 3)
      {
        threeDots();
        dotNum = dotNum +3;
      }
      else if (dotNum == 4)
      {
        fourDots();
        dotNum = dotNum +4;
      }
      else if (dotNum == 5)
      {
        fiveDots();
        dotNum = dotNum +5;
      }
      else if (dotNum == 6)
      {
        sixDots();
        dotNum = dotNum +6;
      }
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
