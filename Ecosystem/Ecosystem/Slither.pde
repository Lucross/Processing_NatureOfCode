class Slither extends Mover{

  Slither(){
  
    super();
    location = new PVector(width/4, height/4);
    hunger = 0;
    timeX = 0;
    timeY = 0;
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
    
    hunger++;
  }
  
  float getHunger(){
    hunger = constrain(hunger, 0, 10);
    return hunger/10;
  }
  
  void display(){
    super.display(127);
    ellipse(location.x, location.y, 8, 8);
  }
  
  PVector attract(Mover m){
    return super.attract(m);
  }
  
  PVector repel(Mover m){
  
    if(m instanceof Predator){
      PVector f = PVector.sub(m.location, location);
      float distance = f.mag();
      distance = constrain(distance,5,25);
      float strength = (1*mass*m.mass)/(distance*distance);
      strength *= 5;
      f.normalize();   
      f.mult(strength);
      f.rotate(PI);
      return f;
    }
    return super.repel(m);
  }

}