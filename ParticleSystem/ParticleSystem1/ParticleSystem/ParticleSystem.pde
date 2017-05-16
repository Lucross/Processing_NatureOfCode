ArrayList<Particle> particles;

void setup(){
  size(640, 360);
  particles = new ArrayList<Particle>();
}

void draw(){
  background(255);
  
  particles.add(new Particle());
  
  for(int i=particles.size()-1; i>=0; i--){

    Particle p = particles.get(i);
    
    p.update();
    p.display();
    
    if(p.isDead()){
      particles.remove(i);
    }
  }
  
 //if(p.isDead())
  
}