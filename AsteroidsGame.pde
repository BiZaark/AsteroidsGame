Spaceship FLXNeutron = new Spaceship();
public void setup() 
{
  size(800,800);
  background(255);
  for(int i = 0; i < sky.length; i++){
     sky[i] = new Star();
  }
}
public void draw() 
{
  
  background(0);
  FLXNeutron.show();
  FLXNeutron.move();
  FLXNeutron.showVariables();
  for(int i = 0; i < sky.length; i++){
     sky[i].show();
  }
}
public void keyPressed(){
  if(key == 'd')
  {
    FLXNeutron.turn(20);
  }
  if(key == 'w')
  {
    FLXNeutron.accelerate(.1);
  }
   if(key == 's')
  {
    FLXNeutron.accelerate(-.1);
  }
   if(key == 'a')
  {
    FLXNeutron.turnLeft(20);
  }
   if(key == 'c')
  {
    FLXNeutron.hyperspace();
  }
}
