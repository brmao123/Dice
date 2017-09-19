void setup()
{
	noLoop();
size(300,300);
}
int Total;
int Roll = 1;
  Die first;
void draw()
{
  
	//your code here
background(255);
for(int y = 0; y <= 200; y += 50){
for (int x = 0; x <= 250; x+= 50){
first = new Die(x,y);
first.show();
if (first.Aroll > 0){
Total = Total + first.Aroll;

}

}
}
first.roll();
}

class Die //models one single dice cube
{
	//variable declarations here
int Aroll;
int myX;
int myY;

	Die(int x, int y) //constructor
	{
		//variable initializations here
myX = x;
myY = y;
Aroll = (int)((Math.random()*6)+1) ;
	}
	void roll()
	{

  text("Total Score:"+Total,125,290);
  text("Roll :" + Roll,70,290);

	}
	void show()
	{
		//your code here
fill(255);
rect(myX,myY,50, 50 );
fill(0);
if(Aroll == 1){

ellipse(myX+25,myY+25, 10,10);
}
if(Aroll == 2){
ellipse(myX+15,myY+15, 10,10);
ellipse(myX+35,myY+15, 10,10);
}
if(Aroll == 3){
ellipse(myX+15,myY+15, 8,8);
ellipse(myX+35,myY+15, 8,8);
ellipse(myX+25,myY+25, 8,8);
}
if(Aroll == 4){
ellipse(myX+15,myY+15, 8,8);
ellipse(myX+35,myY+15, 8,8);
ellipse(myX+25,myY+25, 8,8);
ellipse(myX+15,myY+35, 8,8);
}
if(Aroll == 5){
ellipse(myX+15,myY+15, 8,8);
ellipse(myX+35,myY+15, 8,8);
ellipse(myX+25,myY+25, 8,8);
ellipse(myX+15,myY+35, 8,8);
ellipse(myX+35,myY+35, 8,8);
}
if(Aroll == 6){
ellipse(myX+15,myY+15, 8,8);
ellipse(myX+35,myY+15, 8,8);
ellipse(myX+35,myY+25, 8,8);
ellipse(myX+15,myY+35, 8,8);
ellipse(myX+35,myY+35, 8,8);
ellipse(myX+15,myY+25, 8,8);

}

	}
}
void mousePressed()
{
  redraw();
  Roll++;
}