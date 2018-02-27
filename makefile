###############################################################
# Program:
#     Project 13, Asteroids
#     Brother Falin, CS165
# Author:
#     Cameron Smith
# Summary:
#     You control a ship flying out in space trying to shoot
#     asteroids before they hit your ship and destroy you. 
# Above and Beyond
#     I implemented a life system. You are given 3 lives at
#     the start and everytime you are hit by an asteroid
#     you lose one life and spawn back in the center of the 
#     screen. Once you hit 0 lives the game is over.
###############################################################


LFLAGS = -lglut -lGLU -lGL

###############################################################
# Build the main game
###############################################################
a.out: driver.o game.o uiInteract.o uiDraw.o point.o velocity.o flying.o ship.o bullet.o rocks.o
	g++ driver.o game.o uiInteract.o uiDraw.o point.o velocity.o flying.o ship.o bullet.o rocks.o $(LFLAGS)
	tar -j -cf asteroids.tar makefile *.h *.cpp

###############################################################
# Individual files
#    uiDraw.o       Draw polygons on the screen and do all OpenGL graphics
#    uiInteract.o   Handles input events
#    point.o        The position on the screen
#    game.o         Handles the game interaction
#    velocity.o     Velocity (speed and direction)
#    flyingObject.o Base class for all flying objects
#    ship.o         The player's ship
#    bullet.o       The bullets fired from the ship
#    rocks.o        Contains all of the Rock classes
###############################################################
uiDraw.o: uiDraw.cpp uiDraw.h
	g++ -c uiDraw.cpp

uiInteract.o: uiInteract.cpp uiInteract.h
	g++ -c uiInteract.cpp

point.o: point.cpp point.h
	g++ -c point.cpp

driver.o: driver.cpp game.h
	g++ -c driver.cpp

game.o: game.cpp game.h uiDraw.h uiInteract.h point.h velocity.h flying.h bullet.h rocks.h ship.h
	g++ -c game.cpp

velocity.o: velocity.cpp velocity.h point.h
	g++ -c velocity.cpp

flying.o: flying.cpp flying.h point.h velocity.h uiDraw.h
	g++ -c flying.cpp

ship.o: ship.cpp ship.h flying.h point.h velocity.h uiDraw.h
	g++ -c ship.cpp

bullet.o: bullet.cpp bullet.h flying.h point.h velocity.h uiDraw.h
	g++ -c bullet.cpp

rocks.o: rocks.cpp rocks.h flying.h point.h velocity.h uiDraw.h
	g++ -c rocks.cpp


###############################################################
# General rules
###############################################################
clean:
	rm a.out *.o *.tar
