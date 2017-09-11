void setup()
{
	noLoop();
}
void draw()
{
	background(0);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int mySize, myX, myY;
	Die(int x, int y) //constructor
	{
		//variable initializations here
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		fill(255, 255, 255);
		rect(myX, myY, mySize, mySize);
	}
}
