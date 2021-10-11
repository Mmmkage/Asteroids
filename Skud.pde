
class Skud {
  //initialisering  
  float r; // radius
  float x, y;
  float xSpeed, ySpeed;
  color c = color(100, 50);
  
  void affyring(){
    keyPressed();
  }

  void keyPressed() {
    //Skyd
    if (keyCode == 17) {
      retning += 8;
      println("skud gået" + xSpeed);
      keyCode = 0;
    }
  }
}
