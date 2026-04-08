Mover blackHole;
Mover[] matters = new Mover[100];

void setup()
{
  size(1080, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  newScene();
}

void draw()
{
  background(0);
  
  for (int i = 0; i < matters.length; i++)
  {
    PVector direction = PVector.sub(blackHole.position, matters[i].position);
    direction.normalize().mult(4);
    
    matters[i].position.add(direction);
    matters[i].render();
  }
  
  blackHole.render();
  
  if (frameCount % 300 == 0)
  {
    newScene();
  }
}

void newScene()
{
  float rX = random(Window.left, Window.right);
  float rY = random(Window.bottom, Window.top);
  
  blackHole = new Mover(rX, rY, 50);
  blackHole.setColor(255, 255, 255, 255);
  
  for (int i = 0; i < matters.length; i++)
  {
    float gaussianX = randomGaussian();
    float gaussianY = randomGaussian();
    
    float meanX = 0;
    float meanY = 0;
    
    float standardDeviationX = width/5.0;
    float standardDeviationY = height/5.0;
    
    float x = standardDeviationX * gaussianX + meanX;
    float y = standardDeviationY * gaussianY + meanY;
    
    float rScale = random(5, 25);
    
    matters[i] = new Mover(x, y, rScale);
    matters[i].setColor(random(0, 255), random(0, 255), random(0, 255), 255);
  }
}
