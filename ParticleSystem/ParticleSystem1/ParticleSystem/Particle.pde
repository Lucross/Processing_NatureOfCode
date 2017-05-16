class Particle{
  
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
  
  float lifeSpan = 255;
  
  Particle(){
    location = new PVector(width/2, 50);

    velocity = new PVector(random(-1,1), random(-1,1));
    acceleration = new PVector(0,0.05);
    mass = 1;
  }
  
  void applyForce(PVector force){
    PVector f = PVector.div(force, mass);
    acceleration.add(f);
  }
  
  void update(){
    velocity.add(acceleration);
    location.add(velocity);
    //acceleration.mult(0);
    
    lifeSpan -= 2;
  }
  
  boolean isDead(){
    if(lifeSpan <= 0)
      return true;
    else
      return false;
  }
  
  void display(){
    stroke(0, lifeSpan);
    strokeWeight(2);
    fill(127, lifeSpan);
    ellipse(location.x, location.y, 16, 16);
  }
}