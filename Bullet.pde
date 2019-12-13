class Bullet extends Floater
{
  private double dRadians;
  public Bullet(Spaceship FLXNeutron)
  {
    
    corners = 4;
    xCorners = new int[]{-5,5,5,-5};
    yCorners = new int[]{1,1,-1,-1};
    myPointDirection = FLXNeutron.getPointDirection();
    dRadians = myPointDirection*(Math.PI/180);   
    myCenterX = FLXNeutron.getCenterX();
    myCenterY = FLXNeutron.getCenterY();
    myDirectionX = 5*Math.cos(dRadians)+FLXNeutron.getDirectionX();
    myDirectionY = 5*Math.sin(dRadians)+FLXNeutron.getDirectionY();
    myColor = color(255,0,0);
    
  }



  public void move() {
    
    
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     
  }
}
