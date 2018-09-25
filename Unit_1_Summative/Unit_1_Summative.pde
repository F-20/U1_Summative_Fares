import processing.sound.*;
SoundFile file;
String WakaWaka = "WakaWaka.mp3";
String wakawaka ;
Ball firstBall;
PImage Glove;
PImage Stadium;
int Goals = 0;

void setup()
{
 wakawaka = sketchPath("WakaWaka.mp3");
 file = new SoundFile(this, wakawaka);
 file.play();
 size(800,800); 
 firstBall = new Ball();
 noStroke();
 Stadium = loadImage("Stadium.jpg");
 Stadium.resize(800,800);
 Glove = loadImage("Glove.png");
 Glove.resize(100,100);
 imageMode(CENTER);
}

void draw()
{
  background(Stadium);
  firstBall.Render();
  firstBall.Move();
  image(Glove, mouseX, mouseY);
  
  
  fill(0,0,0);
  rect(700,100,50,600);
  textSize(20);
  text("Saves: " + firstBall.Saves, 20,20);
  text("Goals: " + Goals, 20,60);
  
  if( firstBall.x > 700)
  {
    if( firstBall.y > 100)
    {
      if(firstBall.y < 700)
      {
        Goals = Goals + 1;
        firstBall.Reset();
      }
    }
  }
  
  //if( -3*Saves = Saves +3);
  {
    
  }
  
  
  
  if(dist(firstBall.x,firstBall.y,mouseX,mouseY)<90)
  {
    firstBall.directionX=-1;
  }

}
