Die bob;
void setup()
{
	size(400, 400);
	noLoop();
}
void draw()
{
	bob = new Die(50, 50);
	bob.show();
}
void mousePressed()
{
	redraw();
}
class Die
{
	int dieX, dieY, dieSpots;
	Die(int x, int y)
	{
		dieX = x;
		dieY = y;
		roll();
	}
	void roll()
	{
		double dieRoll = Math.random()*6;
		if (dieRoll < 1)
		{
			dieSpots = 1;
		}
		else if (dieRoll < 2)
		{
			dieSpots = 2;
		}
		else if (dieRoll < 3)
		{
			dieSpots = 3;
		}
		else if (dieRoll < 4)
		{
			dieSpots = 4;
		}
		else if (dieRoll < 5)
		{
			dieSpots = 5;
		}
		else 
		{
			dieSpots = 6;
		}
	}
	void show()
	{
		rect(dieX,dieY,50,50);
		if (dieSpots == 1)
		{
			ellipse(dieX+25,dieY+25,10,10);
		}
		if (dieSpots == 2)
		{
			ellipse(dieX+15,dieY+15,10,10);
			ellipse(dieX+35,dieY+35,10,10);
		}
		if (dieSpots == 3)
		{
			ellipse(dieX+25,dieY+25,10,10);
			ellipse(dieX+35,dieY+15,10,10);
			ellipse(dieX+15,dieY+35,10,10);
		}
		if (dieSpots == 4)
		{
			ellipse(dieX+15,dieY+15,10,10);
			ellipse(dieX+35,dieY+15,10,10);
			ellipse(dieX+15,dieY+35,10,10);
			ellipse(dieX+35,dieY+35,10,10);
		}
		if (dieSpots == 5)
		{
			ellipse(dieX+25,dieY+25,10,10);
			ellipse(dieX+15,dieY+15,10,10);
			ellipse(dieX+35,dieY+15,10,10);
			ellipse(dieX+15,dieY+35,10,10);
			ellipse(dieX+35,dieY+35,10,10);
		}
		if (dieSpots == 6)
		{
		}
	}
}
