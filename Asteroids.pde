
//hvor mange asteroider skal der være til at starte med. 
int numberOfAst;
float retning;
int skudArrIndex;
//opret asteroinde array
Asteroider asteroiderArr[] = new Asteroider[100];
//opret skud array
//Skud skudArr[] = new Skud[1000000];
Skud nytSkud = new Skud();


//tegn skibet
Skib mitSkib = new Skib();

void setup() {
  size(400, 400);
  //hvor mange asteroider skal der være til at starte med. 
  numberOfAst=5;
  // Initialize Asteroider
  for (int i = 0; i < numberOfAst; i++ ) {
    asteroiderArr[i] = new Asteroider(random(32));
  }
  println("width "+width+" Height "+height);
  println("width "+mitSkib.xSkib+" Height "+mitSkib.ySkib);
  skudArrIndex = 0;
}

void draw() {
  background(255);
  //flyt ryndt på asteroiderne
  for (int i = 0; i < numberOfAst; i ++ ) {
    asteroiderArr[i].move();
    asteroiderArr[i].display();
  }
  //flyt skibet
  mitSkib.display(20);
  mitSkib.skiftRetning();
  mitSkib.move();
  retning = mitSkib.retning;
  //skudArr[skudArrIndex].affyring();
  nytSkud.affyring();
  //println(mitSkib.xSkib);
}
