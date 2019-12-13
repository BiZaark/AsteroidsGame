class Asteroid extends Floater
{
  private double rotSpeed;
  public Asteroid()
  {
    corners = 11;
    xCorners = new int[]{0, 6, 10, 14, 14, 10, 4, -12, -16, -12, -6};
    yCorners = new int[]{12, 12, 4, -2, -6, -8, -8, -4, 0, 6, 10};
    myCenterX = Math.random()*1000;
    myCenterY = Math.random()*700;
    myDirectionX = (Math.random()*3)-1;
    myDirectionY = (Math.random()*3)-1;
    myPointDirection = 0;
    myColor = color(169, 169, 169);
    rotSpeed = (Math.random()*3)-1;
  }
  public void move() {
    turn(rotSpeed);
    super.move();
  }
} 
