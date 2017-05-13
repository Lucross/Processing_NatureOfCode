class Attractor{
  PVector location;
  PVector dragOffset;
  float mass;
  float G;
  
  Attractor(){
    location = new PVector(width/2, height/2);
    mass = 20;
    G = 1;
    dragOffset = new PVector(0,0);
  }
  
  PVector attract(Mover m){
    
    PVector force = PVector.sub(location, m.location);
    float d = force.mag();
    d = constrain(d,5,25);
    force.normalize();
    
    float strength = (G*mass*m.mass)/(d*d);
    force.mult(strength);
    
    return force;
  }
  
  void display() {
    stroke(0);
    fill(175,200);
    ellipse(location.x,location.y,mass*2,mass*2);
  }
}