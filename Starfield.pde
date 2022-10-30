Particle part;

//your code here
void setup()
{
  size(500, 500);
  
  part = new Particle(250, 250, 2, 60);
}
void draw()
{
  part.move();
  part.show();
}
class Particle {
  double myX, myY, myS, myA;
  int myC;
  
  Particle(double x, double y, double s, double a) {
    myX = x;
    myY = y;
    myS = s;
    myA = a;
    myC = 255;
  }
  
  void move(){
    myX += Math.cos(myA) * myS;
    myY += Math.sin(myA) * myS;
  }
  
  void show(){
    fill(myC);
    ellipse((float)myX, (float)myY, 10, 10);
  }
}

class OddballParticle //inherits from Particle
{
  //your code here
}

