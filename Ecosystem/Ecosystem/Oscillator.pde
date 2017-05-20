class Oscillator{

  float theta;
  float amp;
  
  Oscillator(float r){
  
    theta = 0;
    amp = r;
  }
  
  void update(float thetaVel){
    theta += thetaVel;
  }
  
  void display(PVector pso){
  
    float x = map(cos(theta),-1,1,0,amp);
    
    stroke(0);
    fill(50);
    line(0,0,x,0);
    ellipse(x,0,8,8);
  }
}