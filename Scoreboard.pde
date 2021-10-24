//Initialisering
class Scoreboard {
  //Calibri-48.vlw
  PFont f;
  String testText;

  Scoreboard() {
    testText = "Hello world";
  }

  void scoreTest() {
    int textSize = 20;
    textFont(f, textSize);
    textAlign(RIGHT);
    text(testText, width-textSize, textSize);
    println(testText.length());
  }
}
