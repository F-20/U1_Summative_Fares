class Ball
{
  float x;
  float y;
  float w;
  float h; 
  float speed;
  int directionX;
  int Saves;
  float speedx; 
  float speedy;
  
  Ball()
  {
    x = 50;
    y = (int)random(200,600);
    speedx = random (15, 30);
    speedy = random (-5, 5);
    directionX = 1;
    Saves=0;
  }
  
  void Render()
  {
    fill(59,122,255);
    ellipse(x, y, 50, 50);
  }
  
  void Move()
  {
   x= x+ (speedx*directionX);
   y+= speedy;
   
   
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
  
  void Reset()
  {
    x = 50;
    y = (int)random(100,700);
   // speedx = random (30, 50);
    speedy = random (-5, 5);
    
  }
}
