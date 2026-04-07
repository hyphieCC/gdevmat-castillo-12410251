class Walker
{
  PVector position = new PVector();
  PVector speed = new PVector(5, 8);
  
  public float tx = 0, ty = 10000;
  public float ts = 0;
  public float tr = 255, tg = 255, tb = 255;
  
  void render()
  {
    float thicc = map(noise(ts), 0, 1, 5, 150);
    
    float r = map(noise(tr), 0, 1, 0, 255);
    float g = map(noise(tg), 0, 1, 0, 255);
    float b = map(noise(tb), 0, 1, 0, 255);
    
    fill(r, g, b);
    circle(position.x, position.y, thicc);
  }
  
  void perlinWalk()
  {
    position.x = map(noise(tx), 0, 1, Window.left, Window.right);
    position.y = map(noise(ty), 0, 1, Window.bottom, Window.top);
    
    tx += 0.05f;
    ty += 0.05f;
    ts += 0.1f;
    tr += 0.07f;
    tg += 0.01f;
    tb += 0.2f;
  }
  
  void moveAndBounce()
  {
    position.add(speed);
    
    if (position.x > Window.right || position.x < Window.left)
    {
      speed.x *= -1;
    }
    
    if (position.y > Window.top || position.y < Window.bottom)
    {
      speed.y *= -1;
    }
    
    tr += 0.07f;
    tg += 0.01f;
    tb += 0.2f;
  }
}
