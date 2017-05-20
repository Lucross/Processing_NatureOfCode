class Food{

  float mass;
  PVector location;
  
  Food(){
  
    location = new PVector(width/2, height/2);
    mass = 20;
  }
  
  void display(){
  
    stroke(0);
    fill(175,200);
    ellipse(location.x, location.y, mass*2, mass*2);
  }
  
  PVector attract(Mover m){
  
    PVector f = PVector.sub(location, m.location);
    float distance = f.mag();
    distance = constrain(distance,5,25);
    float strength = (1*mass*m.mass)/(distance*distance)*m.getHunger();
    
    f.normalize();   
    f.mult(strength);
    return f;
  }
}