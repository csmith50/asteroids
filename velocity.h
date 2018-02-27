#ifndef VELOCIY_H
#define VELOCIY_H
using namespace std;

class Velocity
{
	float Dx;
	float Dy;
public:
	Velocity();
	Velocity(float, float);
	float getDx() { return Dx; }
	float getDy() { return Dy; }
	void setDx(float);
	void setDy(float);
};

#endif
