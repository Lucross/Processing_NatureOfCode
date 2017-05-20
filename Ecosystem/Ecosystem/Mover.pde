abstract class Mover{

  PVector location;
  PVector velocity;
  PVector acceleration;
  
  float mass;
  float hunger;
  
  float timeX;
  float timeY;
  
  Oscillator osc;
  
  Mover(){
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    mass = 10;
    osc = new Oscillator(mass*2);
  }
  
  void edges(){
    
    if(location.x >= width) velocity.x *= -1;
    if(location.x < 0) velocity.x *= -1;
    if(location.y > height) velocity.y *= -1;
    if(location.y < 0) velocity.y *= -1;
  }
  
  void display(int fill){
  
    stroke(0);
    strokeWeight(2);
    fill(fill);
  }
  
  abstract void move();
  abstract void display();
  
  float getHunger(){
    return 1;
  }
  
  PVector attract(Mover m){
    return new PVector(0,0);
  }
  
  PVector repel(Mover m){
    return new PVector(0,0);
  }
  
  
  void applyForce(PVector f){
    
    PVector force = PVector.div(f, mass);
    acceleration.add(force);
  }
}