void setup()
{
  size(1020, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
  background(255);
}

void draw()
{
  float gaussianX = randomGaussian();
  float standardDeviationX = width/5.0;
  float meanX = 0;
  float x = standardDeviationX * gaussianX + meanX;
  float y = random(-height/2.0, height/2.0);
  
  float gaussianS = randomGaussian();
  float standardDeviationS = 10;
  float meanS = 30;
  float circleS = standardDeviationS * gaussianS + meanS;
  println(circleS);
  
  float r = random(0, 255);
  float g = random(0, 255);
  float b = random(0, 255);
  float a = random(10, 100);
  
  noStroke();
  fill (r, g, b, a);
  circle(x, y, circleS);
}
