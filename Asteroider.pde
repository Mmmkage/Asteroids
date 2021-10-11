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
  }


  // Display asteroide
  void display() {
    stroke(0);
    fill(c);
    ellipse(xAst, yAst, r*2, r*2);
  }

  // A function that returns true or false based on whether two circles intersect
  // If distance is less than the sum of radii the circles touch
  boolean intersect(Asteroider b) {

    // Objects can be passed into functions as arguments too! 
    float distance = dist(xAst, yAst, b.xAst, b.yAst); // Calculate distance

    // Compare distance to sum of radii
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
