Spaceship FLXNeutron = new Spaceship();
ArrayList <Asteroid> blockedUp = new ArrayList <Asteroid>();
ArrayList <Bullet> Swagger = new ArrayList <Bullet>();
public void setup() 
{
  size(1000, 700);
  background(255);
  for (int i = 0; i < sky.length; i++) {
    sky[i] = new Star();
  }
  for (int i = 0; i < 21; i++) {
    blockedUp.add(new Asteroid());
  }
}
public void draw() 
{

  background(0);
  for (int i = 0; i < blockedUp.size(); i++) {
    blockedUp.get(i).show();
    blockedUp.get(i).move();
  }
  FLXNeutron.show();
  FLXNeutron.move();
  FLXNeutron.showVariables();
  for (int i = 0; i < sky.length; i++) {
    sky[i].show();
  }
  for (int i = 0; i < Swagger.size()-1; i++) {
    Swagger.get(i).show();
    Swagger.get(i).move();
  }
    for (int i = 0; i < Swagger.size()-1; i++) {
    for(int j = 0; j < blockedUp.size()-1; j++)
    if (dist((float)Swagger.get(i).myCenterX, (float)Swagger.get(i).myCenterY, (float)blockedUp.get(j).myCenterX, (float)blockedUp.get(j).myCenterY) < 10)
    {
    blockedUp.remove(j);
    Swagger.remove(i);
    break;
    }
  }

  } 

public void keyPressed() {
  if (key == 'd')
  {
    FLXNeutron.turn(40);
  }
  if (key == 'w')
  {
    FLXNeutron.accelerate(.3);
  }
  if (key == 's')
  {
    FLXNeutron.accelerate(-.3);
  }
  if (key == 'a')
  {
    FLXNeutron.turnLeft(40);
  }
  if (key == 'c')
  {
    FLXNeutron.hyperspace();
  }
}
public void mousePressed() {
  Swagger.add(new Bullet(FLXNeutron));
}
