class Mover{
  
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  float t=0;
  float t2=10;
  
  Mover(){
  
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0,0);
  }
  
  void move(){
    
    t += 0.01;
    t2 += 0.02;
    
    acceleration.x = (noise(t) - 0.5f);
    acceleration.y = (noise(t2) -0.5f);
    
    velocity.add(acceleration);
    location.add(velocity);
    velocity.limit(5);
  }
  
  void edges(){
    
    if(location.x > width) location.x = 0;
    if(location.x < 0) location.x = width;
    if(location.y > height) location.y = 0;
    if(location.y < 0) location.y = height;
  }
  
  void display(){
    
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(location.x, location.y, 48, 48);
  }
}