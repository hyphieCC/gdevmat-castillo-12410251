Walker[] walkers = new Walker[100];

void setup()
{
  size(1080, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  for (int i = 0; i < walkers.length; i++)
  {
    walkers[i] = new Walker();
    walkers[i].position = new PVector(random(Window.left, Window.right), random(Window.bottom, Window.top));
    walkers[i].scale = random(15, 25);
  }
}

PVector mousePos()
{
  float x = mouseX - Window.windowWidth;
  float y = -(mouseY - Window.windowHeight);
  return new PVector(x, y);
}

void draw()
{
  background(80);
  
  PVector mouse = mousePos();
  
  for (int i = 0; i < walkers.length; i++)
  {
    walkers[i].update(mouse);
    walkers[i].render();
    //walkers[i].checkEdges();
  }
}
