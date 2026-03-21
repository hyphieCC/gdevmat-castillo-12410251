class Walker
{
  float x;
  float y;
  
  void render()
  {
    float r = random(0, 255);
    float g = random(0, 255);
    float b = random(0, 255);
    float a = random(50, 100);
    
    fill(r, g, b, a);
    noStroke();
    circle(x, y, 30);
  }
  
  void randomWalk()
  {
    int rng = int(random(8));
    
    if (rng == 0)
    {
      y += 10;
    }
    else if (rng == 1)
    {
      y -= 10;
    }
    else if (rng == 2)
    {
      x += 10;
    }
    else if (rng == 3)
    {
      x -= 10;
    }
    else if (rng == 4)
    {
      x += 5;
      y += 5;
    }
    else if (rng == 5)
    {
      x -= 5;
      y -= 5;
    }
    else if (rng == 6)
    {
      x += 5;
      y -= 5;
    }
    else
    {
      x -= 5;
      y += 5;
    }
  }
  
  void randomWalkBiased()
  {
    int rng = int(random(100));
    
    if (rng < 50)
    {
      y += 10;
    }
    else if (rng < 58)
    {
      y -= 10;
    }
    else if (rng < 65)
    {
      x += 10;
    }
    else if (rng < 72)
    {
      x -= 10;
    }
    else if (rng < 79)
    {
      x += 5;
      y += 5;
    }
    else if (rng < 86)
    {
      x -= 5;
      y -= 5;
    }
    else if (rng < 93)
    {
      x += 5;
      y -= 5;
    }
    else
    {
      x -= 5;
      y += 5;
    }
  }
}
