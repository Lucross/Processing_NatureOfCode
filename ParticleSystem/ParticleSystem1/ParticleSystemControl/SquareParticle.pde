class SquareParticle extends Particle{

  SquareParticle(PVector o){
    super(o);
  }
  
  void display(){
    
    stroke(0, lifeSpan);
    strokeWeight(2);
    fill(127, lifeSpan);
    rect(location.x, location.y, 16, 16);
  }
}