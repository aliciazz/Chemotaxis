 Bacteria [] colony;
 void setup()
 {  
 	size(400, 400);
 	colony = new Bacteria[30];
 	for (int i= 0; i<colony.length; i++)
 	{
 		colony[i] = new Bacteria(Math.random()*5+200, Math.random()*5+200);
 	}
 }
 void draw()   
 {    
 	background(0);
 	for (int i=0; i<colony.length; i++)
 	{
 		colony[i].move();
 		colony[i].show();
 	}
 }  
 class Bacteria    
	 {     
	 	int myX, myY;
	 	Bacteria(int x, int y)
	 	{
	 		myX = x;
	 		myY = y;
	 	}
	 	void move()
	 	{
			if (mouseX < myX)
				myX = myX +(int)(Math.random()*3-3);
			if (mouseX > myX)
				myX = myX +(int)(Math.random()*3);
			if (mouseY < myY)
				myY = myY +(int)(Math.random()*3-3);
			if (mouseY > myY)
				myY = myY +(int)(Math.random()*3);



	 	}
		 void show()
		{
			int myColor = color(Math.random()*200, 100, 200);
		 	fill(myColor);
		 	ellipse(myX, myY, 10, 10);
		}
 }