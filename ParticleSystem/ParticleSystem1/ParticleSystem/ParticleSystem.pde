Particle p;

void setup(){
  size(640, 360);
  p = new Particle(new PVector(width/2, 20));
}

void draw(){
  background(255);
  p.update();
  p.display();
  
 //if(p.isDead())
  
}