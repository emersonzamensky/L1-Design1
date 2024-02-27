// Setup plant, set framerate
plant p1;
void setup(){
  size(800,800);
  p1 = new plant();
  frameRate(3);
}

// Draw, push and pop to save locations
void draw(){
  background(100);
  pushMatrix();
    translate(width*0.5,height-10);
    rotate(-0.5*PI);
  p1.display();
  popMatrix();
  if(frameCount < 12){
    p1.expand();
  }
}
