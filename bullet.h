#ifndef BULLET_H
#define BULLET_H
using namespace std;
#include "flying.h"

class Bullet : public Flying
{
	int frames; // how many frames bullet is on screen
public:
	Bullet();
   void draw();
   void fire(Point, float, Velocity);
};

#endif
