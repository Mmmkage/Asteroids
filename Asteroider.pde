//Initialisering
class Asteroider {
  float r; // radius
  float xAst, yAst;
  float xSpeed, ySpeed;
  color c = color(100, 50);

  // konstruktør
  Asteroider(float tempR) {
    r = tempR;
    xAst = random(width);
    yAst = random(height);
    xSpeed = random( -2.5, 2.5);
    ySpeed = random( -2.5, 2.5);
  }

  //metoder / funktioner
  void move() {
    //retnings bestemmelse
    xAst += xSpeed; 
    yAst += ySpeed; 

    // "Bounce" på væg og gulv
    if (xAst > width || xAst < 0) {
      xSpeed *= -1;
    }
    if (yAst > height || yAst < 0) {
      ySpeed *= -1;
    }
    displayAst();
  }
  //asteroide ramt
  void hitAst() {
    xAst = 0;
    yAst = 0;
    xSpeed = 0;
    ySpeed = 0;
    board.score +=1;
    r = 0;
  }

  // Display asteroide
  void displayAst() {
    stroke(0);
    fill(c);
    ellipse(xAst, yAst, r*2, r*2);
  }

  //Er asteroide objectet ramt at et skud 
  boolean intersect(Skud b) {
    //Mål afstanden mellen de to objeckter
    float distance = dist(xAst, yAst, b.xSkud, b.ySkud); 

    // Sammenlign distanse til summen af de to radius
    if (distance < r + b.r) {
      return true;
    } else {
      return false;
    }
  }

  void changeDir() {
    ySpeed *= -1;
    xSpeed *= -1;
  }
}
