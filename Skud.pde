
class Skud {
  //initialisering  
  float r; // radius
  float xSkud, ySkud;
  color c = color(100, 50);
  //opret skud array
  //Skud nytSkud = new Skud();


  // Display asteroide
  void displaySkud() {
    stroke(0);
    fill(c);
    ellipse(xSkud, ySkud, 2, 2);
  }
  void moveSkud() {
    //retnings bestemmelse
    xSkud += mitSkib.xSpeed; 
    ySkud += mitSkib.ySpeed;
    
  }
}
