//Initialisering
class Skib {
  float r; // radius
  float xSkib, ySkib;
  float xSpeed, ySpeed;
  color c = color(100, 50);
  float retning;


  // konstruktør
  Skib() {
    xSkib = width;
    ySkib = height;
    xSpeed = 0;
    ySpeed = 0;
    r = 5;
    retning = 0;
  }
  void move() {
    //retnings bestemmelse
    xSkib += xSpeed; 
    ySkib += ySpeed;
    
  }

  void skiftRetning() {
    keyPressed();
  }

  void keyPressed() {
    //Højre
    if (keyCode == 39) {
      retning += 2;
      keyCode = 0;
    }
    //Venstre 
    else if (keyCode == 37) {
      retning -= 2;
      keyCode = 0;
    }
    //pil op/start
    else if (keyCode == 38) {
      xSpeed += cos(radians(retning));
      ySpeed += sin(radians(retning));
        //println(retning);
      keyCode = 0;
    }
    //pil ned/stop 
    else if (keyCode == 40) {
      xSpeed = 0;
      ySpeed = 0;
        keyCode = 0;
    } else {
      //println(keyCode);
    }
  }


  void display(float r_) {
    float r=r_;
    float x1 =xSkib+ cos(radians(retning)) * r;
    float y1 =ySkib+ sin(radians(retning)) * r;

    float x2 =xSkib+ cos(radians(retning+120)) * r;
    float y2 =ySkib+ sin(radians(retning+120)) * r;
    float x3 =xSkib+ cos(radians(retning+240)) * r;
    float y3 =ySkib+ sin(radians(retning+240)) * r;

    stroke(0);
    fill(c);
    triangle(x1, y1, x2, y2, x3, y3);
    stroke(#FF0000);
    line(x3+1, y3+1, x2+1, y2+1);
  }
}
