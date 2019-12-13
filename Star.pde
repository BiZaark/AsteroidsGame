Star[] sky = new Star[100];

class Star //note that this class does NOT extend Floater
{

  private int myX, myY, starX, starY, myColor;
  public Star() {
    myX = (int)(Math.random()*1000);
    myY = (int)(Math.random()*700);
    starX = starY = (int)(Math.random()*10);
    myColor = color((int)(Math.random()*255));
  }

  public void show()
  {

    noStroke();
    fill(myColor);
    ellipse(myX, myY, starX, starY);
  }
}
