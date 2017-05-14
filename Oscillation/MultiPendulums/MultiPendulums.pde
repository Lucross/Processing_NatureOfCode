PVector origin;
PVector bob;
float len;

float angle = PI/4;
float aVel = 0;
float aAcc = 0;

Pendulum p, p2, p3;



void setup(){
  size(640, 360);
  
  p = new Pendulum(new PVector(width/2, 0), 180f, PI/4);
  p2 = new Pendulum(new PVector(width/2, 0), 135f, PI/2);
  p3 = new Pendulum(new PVector(width/2, 0), 135f, PI/3);
}

void draw(){
  
  background(255);
  
  p.update();
  
  p2.origin = p.bob;
  p3.origin = p.bob;
  p2.update();
  p3.update();
}

  