float r = 150;
float a = 0;
float aVel = 0.0;
float aAcc = 0.01;

float t=0;
float rT = 10;
float gT = 20;
float bT = 15;

void setup(){
  size(800, 600);
  background(0);
}

void draw(){

  translate(width/2, height/2);
  
  r = noise(t);
  r *= height/2;
  t += 0.01;
  
  float x = r*cos(a);
  float y = r*sin(a);
  
  float red = noise(rT)*255;
  float green = noise(gT)*255;
  float blue = noise(bT)*255;
  fill(red, green, blue);
  stroke(red, green, blue);
  
  line(0, 0, x, y);
  ellipse(x, y, 5, 5);
  
  a += aVel;
  aVel += aAcc;
  aVel = constrain(aVel, 0, 0.1);
  
  rT += 0.01;
  bT += 0.01;
  gT += 0.01;
}