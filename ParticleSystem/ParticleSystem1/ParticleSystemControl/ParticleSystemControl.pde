 ArrayList<ParticleSystem> psList;
 PVector gravity;
 
   void setup(){
    size(640, 360);
    psList = new ArrayList<ParticleSystem>();
    gravity = new PVector(0,0.05);
  }
  
  void draw(){
    background(255);
    
    for(ParticleSystem ps : psList){
      ps.addParticle();
      ps.applyForce(gravity);
      ps.run();
    }
  } 
  
  void mousePressed(){
  
    psList.add(new ParticleSystem(new PVector(mouseX, mouseY)));
  }