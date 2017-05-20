class Predator extends Mover{

  Predator(){
    location = new PVector((width/4)*3, (height/4)*3);
    timeX = 500;
    timeY = 500;
    hunger = 1;
  }
  
  void move(){
  
    timeX+=0.01;
    timeY+=0.02;
    
    float xx = (noise(timeX) - 0.5f)/5;
    float yy = (noise(timeY) - 0.5f)/5;
    acceleration.add(new PVector(xx, yy));
    
    velocity.add(acceleration);
    location.add(velocity);
    velocity.limit(3);    
    
    acceleration.mult(0);
  }
  
  void display(){
    super.display(45);
    rect(location.x, location.y, 8, 8);
  }
  
  PVector attract(Mover m){
    
    if(m instanceof Slither){
      PVector f = PVector.sub(m.location, location);
      float distance = f.mag();
      distance = constrain(distance,5,25);
      float strength = (1*mass*m.mass)/(distance*distance);
      strength *= 5;
      f.normalize();   
      f.mult(strength);
      return f;
    }
    return super.attract(m);
  }
  
  PVector repel(Mover m){
    return super.repel(m);
  }
  
}