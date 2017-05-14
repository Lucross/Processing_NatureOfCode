class Pendulum{

  PVector origin;
  PVector bob;
  float len;
  
  float angle;
  float aVel = 0;
  float aAcc = 0;

  Pendulum(PVector origin, float len, float a){
    this.origin = origin;
    this.bob = new PVector(origin.x, origin.y+len);
    this.len = len;
    this.angle = a;
  }
  
  void update(){
    
    bob.x = origin.x+len*sin(angle);
    bob.y = origin.y+len*cos(angle);
    
    line(origin.x, origin.y, bob.x, bob.y);
    ellipse(bob.x, bob.y, 32, 32);
    
    aAcc = -0.01 * sin(angle);
    
    angle += aVel;
    aVel += aAcc;
    
    aVel *= 0.99;
  }
  
  
    
}