PVector origin;
Mover bob;
float restLength;

void setup(){
  size(640,360);
  restLength = 200;
  origin = new PVector(width/2, 0);
  bob = new Mover(width/2, 250);
}
  
  void draw(){
    background(255);
    line(origin.x, origin.y, bob.location.x, bob.location.y);
    
    PVector springForce = PVector.sub(bob.location, origin);
    float currLen = springForce.mag();
    springForce.normalize();
    float k = 0.1;
    float stretch = currLen-restLength;
    springForce.mult(-k*stretch);
    
    
    bob.applyForce(springForce);
    
    bob.update();
    bob.display();
  }