Ball b;

void setup(){
  
  size(800, 600);
  b = new Ball();
}

void draw(){
  background(255);
  b.move();
  b.bounce();
  b.display();
}