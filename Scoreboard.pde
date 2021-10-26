//Initialisering
class Scoreboard {
  //Calibri-48.vlw
  PFont f;
  int score;
  // konstruktør

  Scoreboard() {
    score = 0;
  }

  /*void scoreTest() {
   int textSize = 20;
   textFont(f, textSize);
   textAlign(RIGHT);
   text(testText, width-textSize, textSize);
   println(testText.length());
   }*/
  //metoder / funktioner

  void score() {
    int textSize = 20;
    textFont(f, textSize);
    textAlign(RIGHT);
    text("point " + score, width-textSize, textSize);
  }
}
