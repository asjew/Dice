void setup()
{
	size(400, 400);
	textAlign(CENTER);
	noLoop();
}
void draw()
{
	background(0);
	for (int x = 20; x < 370; x = x + 60)
	{
		Die one = new Die(x, 50);
		one.show();
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
	
	}
	void show()
	{
		fill(255, 255, 255);
		rect(myX, myY, mySize, mySize);
		fill(0);
		ellipse(myX + mySize/2, myY + mySize/2, 5, 5);
	}
}
