
//hvor mange asteroider skal der være til at starte med. 
int numberOfAst;
//opret asteroinde array
Asteroider asteroiderArr[] = new Asteroider[100];
int skudArrIndex;
Skud skudArr[] = new Skud[1000];


 

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

  skudArrIndex = 0;
}

void draw() {
  background(255);
  //flyt ryndt på asteroiderne
  for (int i = 0; i < numberOfAst; i ++ ) {
    asteroiderArr[i].move();
    asteroiderArr[i].displayAst();
  }
  //flyt ryndt på Skud

  for (int i = 0; i < skudArrIndex; i ++ ) {
    if (skudArr[i] != null) {
      skudArr[i].displaySkud();
      skudArr[i].moveSkud();
    }
  }
  //flyt skibet
  mitSkib.display(20);
  mitSkib.skiftRetning();
  mitSkib.move();
}
