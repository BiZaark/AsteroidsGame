class Spaceship extends Floater  
{   
  public void turnLeft(int nDegreesOfRotation)
  {
    myPointDirection -= nDegreesOfRotation;
  }

  public Spaceship()
  {
    corners = 4;
    xCorners = new int[]{-8, 16, -8, -2};
    yCorners = new int[]{-8, 0, 8, 0};
    myCenterX = 500;
    myCenterY = 350;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;
    myColor = color(0, 191, 255);
  }

  public void hyperspace()
  {
    myCenterX = (int)(Math.random()*900);
    myCenterY = (int)(Math.random()*600);
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = (int)(Math.random()*360);
  }
  public void showVariables()
  {
    fill(255);
    noStroke();
    text("X Coord = " + (int)myCenterX, 10, 10);
    text("Y Coord = " + (int)myCenterY, 10, 22);
    // text("Direction = " + (int)myPointDirection,10,34);
  }
  public double getCenterX() {
    return myCenterX;
  }
  public double getCenterY() {
    return myCenterY;
  }
  public double getPointDirection(){
  return myPointDirection;
  }
  public double getDirectionX() {
    return myDirectionX;
  }
  public double getDirectionY() {
    return myDirectionY;
  }
}
