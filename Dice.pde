void setup()
{
  size(400, 400);
  textAlign(CENTER);
  noLoop();
}
void draw()
{
  background(0);
  for (int x = 30; x < 370; x = x + 140)
  {
    Die dieTop = new Die(x, 80);
    dieTop.roll();
    dieTop.show();
    Die dieMiddle = new Die(x, 180);
    dieMiddle.roll();
    dieMiddle.show();
    Die dieBottom = new Die(x, 280);
    dieBottom.roll();
    dieBottom.show();
  }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int mySize, myX, myY, dots;
  Die(int x, int y)
  {
    mySize = 50;
    myX = x;
    myY = y;
  }
  void roll()
  {
    dots = (int)(Math.random() * 6) + 1;
  }
  void show()
  {
    fill(255, 255, 255);
    rect(myX, myY, mySize, mySize);
    fill(0);

    switch(dots){
  case 1:
    ellipse(myX + mySize/2, myY + mySize/2, 5, 5);
    break;
  case 2:
    ellipse(myX + mySize/4, myY + mySize/2, 5, 5);
    ellipse(myX + mySize*3/4, myY + mySize/2, 5, 5);
    break;
  case 3:
    ellipse(myX + mySize/4, myY + mySize/4, 5, 5);
    ellipse(myX + mySize/2, myY + mySize/2, 5, 5);
    ellipse(myX + mySize*3/4, myY + mySize*3/4, 5, 5);
    break;
  case 4:    
    ellipse(myX + mySize/4, myY + mySize/4, 5, 5);
    ellipse(myX + mySize*3/4, myY + mySize/4, 5, 5);
    ellipse(myX + mySize/4, myY + mySize*3/4, 5, 5);
    ellipse(myX + mySize*3/4, myY + mySize*3/4, 5, 5);
    break;
  case 5:
    ellipse(myX + mySize/4, myY + mySize/4, 5, 5);
    ellipse(myX + mySize*3/4, myY + mySize/4, 5, 5);
    ellipse(myX + mySize/4, myY + mySize*3/4, 5, 5);
    ellipse(myX + mySize*3/4, myY + mySize*3/4, 5, 5);
    ellipse(myX + mySize/2, myY + mySize/2, 5, 5);
    break;
  case 6:
    ellipse(myX + mySize/4, myY + mySize/4, 5, 5);
    ellipse(myX + mySize/2, myY + mySize/4, 5, 5);
    ellipse(myX + mySize*3/4, myY + mySize/4, 5, 5);
    ellipse(myX + mySize/4, myY + mySize*3/4, 5, 5);
    ellipse(myX + mySize/2, myY + mySize*3/4, 5, 5);
    ellipse(myX + mySize*3/4, myY + mySize*3/4, 5, 5);
    break;
   //default:
   //  shouldn't do anything
    }
  }
}
