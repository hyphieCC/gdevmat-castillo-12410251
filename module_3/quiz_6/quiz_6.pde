void setup()
{
  size(1080, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
}

PVector mousePos()
{
  //removed (/ 2) as it was causing the mouse position to be off center
  float x = mouseX - Window.windowWidth;
  float y = -(mouseY - Window.windowHeight);
  return new PVector(x, y);
}

void draw()
{
  background(130);
  
  PVector mouse = mousePos();
  
  mouse.normalize().mult(300);
  
  PVector opposite = new PVector(-mouse.x, -mouse.y);
  
  //outer glow
  stroke(255, 0, 0);
  strokeWeight(20);
  line(0, 0, mouse.x, mouse.y);
  line(0, 0, opposite.x, opposite.y);
  
  //inner glow
  stroke(255);
  strokeWeight(12);
  line(0, 0, mouse.x, mouse.y);
  line(0, 0, opposite.x, opposite.y);
  
  //handle
  stroke(0);
  strokeWeight(20);
  float hLength = 0.2;
  line(mouse.x * hLength, mouse.y * hLength, opposite.x * hLength, opposite.y * hLength);
  
  println(mouse.mag());
}
