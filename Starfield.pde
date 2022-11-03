Particle part;
Particle[] arr;

//your code here
void setup()
{                                   
  frameRate(50);
  background(0);
  size(500, 500);
  // part = new Particle(60);
  arr = new Particle[500];
  for(int i = 0; i < 3; i++) {
    arr[i] = new OddballParticle();
  }
  for(int i = 3; i < arr.length; i++) {
    arr[i] = new Particle();
  }
}

void draw()
{
  // loop();
  background(0);
  //part.move();
  //part.show();

  for(int i = 0; i < arr.length; i++) {
    arr[i].move();
    arr[i].show();
    arr[i].reset();
  }
}
class Particle {
  double myX, myY, myS, myA;
  int myC;
  
  int size = (int)(Math.random() * 2 + 4);
  
  Particle() {
    myX = 250;
    myY = 250;
    myS = Math.random() * 20;
    myA = Math.random() * (2 * Math.PI);
    myC = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  
  void move(){
    myX += Math.cos(myA) * myS;
    myY += Math.sin(myA) * myS;
    /*
    if(myX < 100 || myY < 100) {
      redraw();
      myX = 250;
      myY = 250;
    }
    */
  }
  
  void show(){
   // noLoop();
     noStroke(); 

    fill(myC);
    // (int)(Math.random() * 5 + 1)
    ellipse((float)myX, (float)myY, size, size);
  }
  
  void reset(){
    if(myX > 500 || myY > 500 || myX < 0 || myY < 0){
      myX = 250;
      myY = 250;
      myA = Math.random() * 360;
       myS = Math.random() * 3 + 1;

    }
  }
}

class OddballParticle extends Particle //inherits from Particle
{
  OddballParticle() {
    myX = 250;
    myY = 250;
    myS = Math.random() * 5;
    myA = Math.random() * (2 * Math.PI);
    myC = 255;
  }
  
  void show() {
    fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    rect((float)myX, (float)myY, 30, 30);
  }  
  
  void move(){
    myX += (int)(Math.random() * 10 - 5);
    myY += (int)(Math.random() * 10 - 5);
  }
}

