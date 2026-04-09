Walker[] walkers = new Walker[8];

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  reset();
}

void draw()
{
  background(255);
  stroke(0);
  strokeWeight(5);
  line(0, Window.bottom, 0, Window.top);
  noStroke();
  for (Walker w : walkers)
  {
    PVector accel = new PVector(0.2, 0);
    float mew = 0.01f;
    if (w.position.x > 0)
    {
      mew = 0.4f;
    }
    
    float normal = 1;
    float frictionMagnitude = mew * normal;
    PVector friction = w.velocity.copy();
    
    friction.mult(-1);
    friction.normalize();
    friction.mult(frictionMagnitude);
    w.applyForce(friction);
    w.applyForce(accel);
    
    w.update();
    w.render();
  }
}

void reset()
{
  for (int i = 0; i < walkers.length; i++)
  {
    walkers[i] = new Walker();
    
    float posY = 2 * (Window.windowHeight / 8.0) * (i - (8.0 / 2.0));
    
    walkers[i].position = new PVector(-500, posY);
    walkers[i].mass = 10 - i;
    walkers[i].scale = walkers[i].mass * 15;
    
    walkers[i].r = random(0, 255);
    walkers[i].g = random(0, 255);
    walkers[i].b = random(0, 255);
  }
}

void mouseClicked()
{
  reset();
}
