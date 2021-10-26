//Initialisering
class Scoreboard {
  //Calibri-48.vlw
  PFont f;
  //String testText;
  int score;

  Scoreboard() {
    //testText = "Hello world";
    score = 0;
  }

  /*void scoreTest() {
    int textSize = 20;
    textFont(f, textSize);
    textAlign(RIGHT);
    text(testText, width-textSize, textSize);
    println(testText.length());
  }*/
  
  void score() {
    int textSize = 20;
    textFont(f, textSize);
    textAlign(RIGHT);
    text("point " + score, width-textSize, textSize);
  }
}
