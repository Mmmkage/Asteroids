
class Skud {
  //initialisering  
  float r; // radius
  float xSkud, ySkud;
  float xSpeed, ySpeed;
  color c = color(255, 0, 0);
  //opret skud array
  //Skud nytSkud = new Skud();

  Skud(float retningTemp) {
    xSkud = mitSkib.xSkib; 
    ySkud = mitSkib.ySkib;
    xSpeed = cos(radians(retningTemp));
    ySpeed = sin(radians(retningTemp));
  }
  // Display asteroide
  void displaySkud() {
    stroke(2);
    fill(c);
    ellipse(xSkud, ySkud, 2, 2);
  }
  void moveSkud() {
    //retnings bestemmelse
    xSkud += xSpeed; 
    ySkud += ySpeed;
  }
}
