double x = 250;
double y = 250;

Particle[] stars = new Particle[20000];
OddballParticle nebula = new OddballParticle();

void setup()
{
  size(500,500);
  background(0);
  for(int i = 2; i < stars.length; i++){
   stars[i] = new Particle();
 }
 for(int i = 0; i < 2; i++){
   stars[i] = new OddballParticle();
 }

}
void draw()
{
 // background(0);
  for(int i = 0; i < stars.length; i++){
   stars[i].move();
   stars[i].show();
  }
}

class Particle
{
  //your code here
  int myColor, mySize;
  double myX,myY,mySpeed,myAngle;
  
  Particle(){
    myColor = (int)(Math.random()*6);
    myX = x;
    myY = y;
    mySpeed = Math.random()*500;
    myAngle = Math.random()*360;
    mySize = 1;
  }
  
  void move(){
   myX = myX + Math.cos(myAngle*mySpeed);
   myY = myY + Math.sin(myAngle*mySpeed);
   if(myX > 550 || myX < -50){
     myX = y;
   }
   if(myY > 550 || myY < -50){
     myY = y;
   }
  }
  
  void show(){
    noStroke();
    if(myColor == 1)
      fill(120, 255, 210);
    if(myColor == 2)
      fill(250, 137, 186);
    if(myColor == 3)
      fill(151, 149, 237);
    if(myColor == 4)
      fill(244, 250, 190);
    if(myColor == 5)
      fill(245, 207, 120);
    if(myColor == 0)
         fill(147, 89, 240);
    if(myColor == 7){
      fill(75, 112, 171);
    }
    rect((float)myX,(float)myY,(float)mySize,(float)mySize);
  }
}

class OddballParticle extends Particle//inherits from Particle
{
  OddballParticle(){
      myColor = 7;
      myX = x;
      myY = y;
      mySpeed = 1;
      myAngle = Math.random()*30;
      mySize = 30;
  }
  
}

