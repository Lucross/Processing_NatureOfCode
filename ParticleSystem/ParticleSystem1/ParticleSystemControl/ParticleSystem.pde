class ParticleSystem{
  
  ArrayList<Particle> particles;
  
  PVector origin;
    
  ParticleSystem(PVector o){
    particles = new ArrayList<Particle>();
    this.origin = o;
  }
  
  void run(){
    
    for(int i=particles.size()-1; i>=0; i--){
  
      Particle p = particles.get(i);
      
      p.update();
      p.display();
      
      if(p.isDead()){
        particles.remove(i);
      }
    }
  }
  
  void addParticle(){
    particles.add(new Particle(origin));
  }



  
  
}