// Here is the whole class for my ball
class Ball
{
  // Below are all my x, y, height, width, and speed variables
  float x;
  float y;
  float w;
  float h; 
  float speed;
  int directionX;
  int Saves;
  float speedx; 
  float speedy;
  
  // This is my default constructer
  Ball()
  {
    // Here are the speeds it can go from (they are random from a specific number to another)
    x = 50;
    y = (int)random(200,600);
    speedx = random (15, 30);
    speedy = random (-5, 5);
    directionX = 1;
    Saves=0;
  }
  
  // Here it renders the color and the actual circle
  void Render()
  {
    fill(59,122,255);
    ellipse(x, y, 50, 50);
  }
  // Here the speed is turned on, so that it moves
  void Move()
  {
   x= x+ (speedx*directionX);
   y+= speedy;
   
   // Here the ball resets itself so that it goes back to the starting postion on the left side of the screen
   if(x<-10)
   {
     Reset();
     directionX=1;
     Saves+=1;
     
   }
   if(x>810)
   {
    Reset(); 
   }
    
  }
  // Here I tell it to reset 
  void Reset()
  {
    x = 50;
    y = (int)random(100,700);
   // speedx = random (30, 50);
    speedy = random (-5, 5);
    
  }
}
