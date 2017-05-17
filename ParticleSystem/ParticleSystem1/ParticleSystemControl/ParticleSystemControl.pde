 ArrayList<ParticleSystem> psList;
 
   void setup(){
    size(640, 360);
    psList = new ArrayList<ParticleSystem>();
  }
  
  void draw(){
    background(255);
    
    for(ParticleSystem ps : psList){
      ps.addParticle();
      
      ps.run();
    }
  } 
  
  void mousePressed(){
  
    psList.add(new ParticleSystem(new PVector(mouseX, mouseY)));
  }