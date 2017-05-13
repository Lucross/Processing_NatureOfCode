Mover[] movers;
Attractor a;

void setup(){
  
  size(800, 600);
  movers = new Mover[5];
  a = new Attractor();
  
  for(int i=0; i<movers.length; i++){
    movers[i] = new Mover();
  }
}

void draw(){
  background(255);
  
  for(Mover m : movers){
    
    PVector f = a.attract(m);
    m.applyForce(f);
    
    if(mousePressed){
      PVector wind = new PVector(0.2, 0);
      m.applyForce(wind);
    }
    
    m.update();
    m.edges();
    m.display();
    
    a.display();
  }
}