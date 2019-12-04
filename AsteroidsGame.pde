Spaceship FLXNeutron = new Spaceship();
Asteroid[] blockedUp = new Asteroid[20];
public void setup() 
{
  size(1000,700);
  background(255);
  for(int i = 0; i < sky.length; i++){
     sky[i] = new Star();
  }
  for(int i = 0; i < blockedUp.length; i++){
  blockedUp[i] = new Asteroid();
  }
}
public void draw() 
{
  
  background(0);
  for(int i = 0; i < blockedUp.length; i++){
  blockedUp[i].show();
  blockedUp[i].move();
  }
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
