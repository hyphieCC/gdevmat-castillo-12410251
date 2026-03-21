public class Walker
{
  public float x;
  public float y;
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
    circle(x, y, thicc);
  }
  
  void perlinWalk()
  {
    x = map(noise(tx), 0, 1, -width/2, width/2);
    y = map(noise(ty), 0, 1, -height/2, height/2);
    
    tx += 0.05f;
    ty += 0.05f;
    ts += 0.1f;
    tr += 0.07f;
    tg += 0.01f;
    tb += 0.2f;
  }
}
