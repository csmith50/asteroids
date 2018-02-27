#include "flying.h"
using namespace std;


Flying::Flying()
{
   alive = true;
   angle = 0.00;
}

void Flying::advance()
{
   point.setX(velocity.getDx() + point.getX());
   point.setY(velocity.getDy() + point.getY());
}

void Flying::wrap()
{
	if (point.getX() > 205) // right side of screen
		(point.setX(-200)); // move to left
	else if (point.getX() < -205) // left side of screen
		point.setX(200); // move to right
	else if (point.getY() > 205) // top of screen
		point.setY(-200); // move to bottom
	else if (point.getY() < -205) // bottom of screen
		point.setY(200); // move to top	
}
