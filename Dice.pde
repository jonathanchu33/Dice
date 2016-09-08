Die bob;
int sumDies = 0;
void setup()
{
	size(400, 400);
	noLoop();
}
void draw()
{
	for(int j = 0; j < 8; j++)
	{
		for(int i = 0; i < 8; i++)
		{
			bob = new Die(i*50, j*50);
			bob.show();
		}
	}
	fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256),150);
	textSize(150);
	text(sumDies,75,250);
}
void mousePressed()
{
	sumDies = 0;
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
		fill(255);
		rect(dieX,dieY,50,50);
		if (dieSpots == 1)
		{
			fill(0);
			ellipse(dieX+25,dieY+25,10,10);
			sumDies = sumDies++;
		}
		if (dieSpots == 2)
		{
			fill(0,0,255);
			ellipse(dieX+10,dieY+10,10,10);
			ellipse(dieX+40,dieY+40,10,10);
			sumDies = sumDies += 2;
		}
		if (dieSpots == 3)
		{
			fill(255,0,0);
			ellipse(dieX+25,dieY+25,10,10);
			ellipse(dieX+40,dieY+10,10,10);
			ellipse(dieX+10,dieY+40,10,10);
			sumDies = sumDies += 3;
		}
		if (dieSpots == 4)
		{
			fill(255,0,255);
			ellipse(dieX+10,dieY+10,10,10);
			ellipse(dieX+40,dieY+10,10,10);
			ellipse(dieX+10,dieY+40,10,10);
			ellipse(dieX+40,dieY+40,10,10);
			sumDies = sumDies += 4;
		}
		if (dieSpots == 5)
		{
			fill(255,255,0);
			ellipse(dieX+25,dieY+25,10,10);
			ellipse(dieX+10,dieY+10,10,10);
			ellipse(dieX+40,dieY+10,10,10);
			ellipse(dieX+10,dieY+40,10,10);
			ellipse(dieX+40,dieY+40,10,10);
			sumDies = sumDies += 5;
		}
		if (dieSpots == 6)
		{
			fill(0,255,0);
			ellipse(dieX+10,dieY+10,10,10);
			ellipse(dieX+40,dieY+10,10,10);
			ellipse(dieX+10,dieY+40,10,10);
			ellipse(dieX+40,dieY+40,10,10);
			ellipse(dieX+10,dieY+25,10,10);
			ellipse(dieX+40,dieY+25,10,10);
			sumDies = sumDies += 6;
		}
	}
}
