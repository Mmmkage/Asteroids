/*---------------------------------------------------------------------------
 TODO
 SCORE BOARD Class
 String af tekst der opdaterer når en asteroide er ramt evt. point
 Når skib bliver ramt trækkes der point fra. Går du i minus slutter spillet
 
 MAIN Class
 Flyt elementer der ikke er nødvendige.
 
 SKIB Class
 Få skibet til at ligne et noget... Eventuelt et rumskib
 
 Asteroider Class
 Asteroider har typisk kratere. måske mine også burde have sådan nogen..
 --------------------------------------------------------------------------*/


//hvor mange asteroider skal der være til at starte med. 
int numberOfAst;
//opret asteroinde array med plads til op til 10 asteroider.
Asteroider asteroiderArr[] = new Asteroider[10];

//opret Skud array med plads til op til 1000 Skud.
int skudArrIndex;
Skud skudArr[] = new Skud[1000];

//tegn skibet
Skib mitSkib = new Skib();
Scoreboard board = new Scoreboard();

void setup() {
  size(400, 400);
  //hvor mange asteroider skal der være til at starte med. 
  numberOfAst=5;
  // Initialize Asteroider
  for (int i = 0; i < numberOfAst; i++ ) {
    asteroiderArr[i] = new Asteroider(random(32));
  }
  //For at sikre fonten bliver loaded loader jeg den i setup
  board.f = loadFont("Calibri-48.vlw");
}

void draw() {
  background(255);
  //flyt ryndt på asteroiderne
  for (int i = 0; i < numberOfAst; i++ ) {
    asteroiderArr[i].move();
  }
  //flyt ryndt på Skud
  for (int i = 0; i < skudArrIndex; i++ ) {
    if (skudArr[i] != null) {
      skudArr[i].moveSkud();
      //Når skud og asteroider er flyttet, så se om nogen af dem har ramt hinanden.
      for (int x = 0; x < numberOfAst; x++ ) {
        if (asteroiderArr[x].intersect(skudArr[i])) {
          asteroiderArr[x].hitAst();
        }
      }
    }
  }
  mitSkib.move();
  board.score();
}
