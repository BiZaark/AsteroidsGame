class Spaceship extends Floater  
{   
  public void turnLeft(int nDegreesOfRotation)
  {
  myPointDirection-=nDegreesOfRotation;  
  }
  
  public Spaceship(){
    corners = 4;
    xCorners = new int[]{-8,16,-8,-2};
    yCorners = new int[]{-8,0,8,0};
    myCenterX = 400;
    myCenterY = 400;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;
    myColor = color(255,0,0);
  }
  
  public void hyperspace()
  {
  myCenterX = (int)(Math.random()*500);
  myCenterY = (int)(Math.random()*500);
  myDirectionX = 0;
  myDirectionY = 0;
  myPointDirection = (int)(Math.random()*500);
  }
  public void showVariables()
  {
  fill(255);
  noStroke();
  text("X Coord = " + (int)myCenterX,10,10);
  text("Y Coord = " + (int)myCenterY,10,22);
 // text("Direction = " + (int)myPointDirection,10,34);

  }

}
