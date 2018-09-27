// Music
import processing.sound.*;
SoundFile file;
String WakaWaka = "WakaWaka.mp3";
String wakawaka ;
// The ball
Ball firstBall;
// The glove
PImage Glove;
// The stadium
PImage Stadium;
// Here is the goals variable
int Goals = 0;

void setup()
{
 wakawaka = sketchPath("WakaWaka.mp3");
 file = new SoundFile(this, wakawaka);
 file.play();
 size(800,800);
 // Here I sized my screen 800 by 800
 firstBall = new Ball();
 noStroke();
 // Here I added the function for it not to smear 
 Stadium = loadImage("Stadium.jpg");
 // Here I load the image into the background 
 Stadium.resize(800,800);
 // Here I resize the image to the screen size 
 Glove = loadImage("Glove.png");
 // Here I load the glove image into the game 
 Glove.resize(100,100);
 // And here I resize it to a good size 
 imageMode(CENTER);
 // This function makes my cursor go into the center of the glove so that it's not on the top left or right
}

void draw()
{
  // Here I tell my stadium to load into the background
  background(Stadium);
  firstBall.Render();
  firstBall.Move();
  // Here I make my mouse follow my glove 
  image(Glove, mouseX, mouseY);
  
  
  fill(0,0,0);
  // Here I draw my goal at a specific place on the screen
  rect(700,100,50,600);
  // Here are my counters on the top left
  textSize(20);
  text("Saves: " + firstBall.Saves, 20,20);
  text("Goals: " + Goals, 20,60);
  
  // Below are my collisions with the goal and ball
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
  
  //if(-3*Saves = Saves +3);
  {
    
  }
  
  
  
  if(dist(firstBall.x,firstBall.y,mouseX,mouseY)<90)
  {
    firstBall.directionX=-1;
  }

}
