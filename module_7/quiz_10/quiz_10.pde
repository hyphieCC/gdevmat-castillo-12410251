Liquid ocean = new Liquid(0, -100, Window.right, Window.bottom, 0.1f);
Walker[] walkers = new Walker[10];
PVector wind = new PVector(0.1, 0);

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  reset();
}

void draw()
{
  background(255);
  
  ocean.render();
  
  for (Walker w : walkers)
  {
    PVector gravity = new PVector(0, -0.15f * w.mass);
    
    w.applyForce(wind);
    w.applyForce(gravity);
    
    if (ocean.isCollidingWith(w))
    {
      PVector dragForce = ocean.calculateDragForce(w);
      w.applyForce(dragForce);
    }
    
    w.update();
    w.checkEdges();
    w.render();
  }
}

void reset()
{
  for (int i = 0; i < walkers.length; i++)
  {
    walkers[i] = new Walker();
    
    float posX = 2 * (Window.windowWidth / 10.0) * (i - (10.0 / 2.0));
    float posY = Window.top + 50;
    
    walkers[i].position = new PVector(posX, posY);
    walkers[i].mass = random(1, 10);
    walkers[i].scale = walkers[i].mass * 10;
    
    walkers[i].r = random(0, 255);
    walkers[i].g = random(0, 255);
    walkers[i].b = random(0, 255);
  }
}

void mouseClicked()
{
  reset();
}
