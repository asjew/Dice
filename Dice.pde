int ballX = 10;
void setup()
{
  size(400, 400);
  textAlign(CENTER);
  noLoop();
}
void draw()
{
  background(218, 229, 223);
  int numDots = 0;
  for(int y = 80; y <= 300; y+=100)
  {
    for (int x = 30; x < 375; x = x + 145)
    {
      Die sample = new Die(x, y);
      sample.roll();
      sample.show();
      if (sample.dots <= 6)
        numDots = numDots + sample.dots;
    }
  }
  //text
  String count = "Total number of dots in this roll: " + numDots;
  fill(0);
  textSize(13);
  text(count, 120, 30, 70);
  String rollDisplay = "Roll Count: " + rollCount;
  text(rollDisplay, 48, 60, 70);
  //ball
  fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  ellipse(ballX, 380, 20, 20);
  ballX = ballX + 20;
}
int rollCount = 0;
void mousePressed()
{
    redraw();
    rollCount = rollCount + 1;
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
     fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
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