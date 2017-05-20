ArrayList<Mover> movers;
Slither s;
Food f;
Predator p;

void setup(){

  size(640, 380);
  movers = new ArrayList<Mover>();
  movers.add(new Slither());
  movers.add(new Slither());
  movers.add(new Slither());
  movers.add(new Predator());
  f = new Food();
}

void draw(){

  background(255);
  
  for(Mover m : movers){
    for(Mover m2 : movers){
      if(!m.equals(m2)){
        PVector attractionF = m.attract(m2);
        m.applyForce(attractionF);
        
        PVector repelF = m.repel(m2);
        m.applyForce(repelF);
      }
    }    
    
    if(m instanceof Slither){
      PVector attractionF = f.attract(m);
      m.applyForce(attractionF); 
    }
      
    m.move();
    m.edges();
    m.display();
  }
  
  f.display();
}