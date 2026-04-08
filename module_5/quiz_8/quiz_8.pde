Walker[] walkers = new Walker[10];
PVector wind = new PVector(0.15, 0);
PVector gravity = new PVector(0, -0.4);

void setup()
{
  size(1080, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  for (int i = 0; i < walkers.length; i++)
  {
    walkers[i] = new Walker();
    
    walkers[i].mass = i + 1;
    walkers[i].scale = walkers[i].mass * 15;
    
    walkers[i].position = new PVector(-500, 200);
    
    walkers[i].r = random(0, 255);
    walkers[i].g = random(0, 255);
    walkers[i].b = random(0, 255);
  }
}

void draw()
{
  background(80);
  
  for (int i = 0; i < walkers.length; i++)
  {
    walkers[i].applyForce(gravity);
    walkers[i].applyForce(wind);
    walkers[i].update();
    walkers[i].checkEdges();
    walkers[i].render();
  }
}
