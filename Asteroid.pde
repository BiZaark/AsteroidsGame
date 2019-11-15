class Asteriod extends Floater
{
  public void Asteroid()
  {
    corners = 11;
    xCorners = new int[]{0,3,5,7,7,5,2,-6,-8,-6,-3};
    yCorners = new int[]{6,6,2,-1,-3,-4,-4,-2,0,3,5};
    myCenterX = 200;
    myCenterY = 600;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;
    myColor = color((int)(Math.random()*255));
  }
}
