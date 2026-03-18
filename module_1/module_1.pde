void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

void draw()
{
  background(0);
  
  //circle(0, 0, 100);
  
  //strokeWeight(5);
  //color white = color(255, 255, 255);
  //fill(white);
  //stroke(white);
  //line(-75, -75, 75, 75);
  
  drawCartesianPlane();
  drawLinearFunction();
  drawQuadraticFunction();
  //drawCircle();
  drawSineWave();
}

void drawCartesianPlane()
{
  strokeWeight(1);
  color white = color(255, 255, 255);
  fill(white);
  stroke(white);
  line(300, 0, -300, 0);
  line(0, -300, 0, 300);
  
  for (int i = -300; i <= 300; i += 10)
  {
    line(i, -3, i, 3);
    line(-3, i, 3, i);
  }
}

void drawLinearFunction()
{
  /* 
    f(x) = -5x + 30
  */
 
  color purple = color(255, 0, 255);
  fill(purple);
  noStroke();
 
  for (float x = -300; x <= 300; x += 0.1f)
  {
    circle(x * 5, ((float)(x * -5) + 30), 5); 
  }
}

void drawQuadraticFunction()
{
  /*
    f(x) = x^2 - 15x - 3
  */
  
  color yellow = color(255, 255, 0);
  fill(yellow);
  stroke(yellow);
  
  for (float x = -300; x <= 300; x += 0.1f)
  {
    circle(x * 10, ((float)Math.pow(x, 2) - (x * 15) - 3), 5);
  }
}

void drawCircle()
{
  color white = color(255, 255, 255);
  fill(white);
  stroke(white);
  float radius = 50;
  
  for (int x = 0; x <= 360; x++)
  {
    circle((float)Math.cos(x) * radius, (float)Math.sin(x) * radius, 5);
  }
}

void drawSineWave()
{
  color green = color(0, 255, 0);
  fill(green);
  noStroke();
  
  float amplitude = 30;
  float frequency = 0.1f;
  
  for (float x = -300; x <= 300; x += 0.1f)
  {
    circle(x, ((float)sin(x * frequency) * amplitude), 5);
  }
}
