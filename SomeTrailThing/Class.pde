class TrailObject {

int trailSize = 50;
int[] trailX = new int[trailSize];
int[] trailY = new int[trailSize];

float randomLimit;

int sizeChanger = 2;


TrailObject() {}

void trailEffect () {
  
 trailX[0] = mouseX;
 trailY[0] = mouseY;
 
 // Draws my character and adds trail effect
 for (int i = 0; i < trailSize; i++) {
     fill(random(randomLimit));
    rect(trailX[i], trailY[i], i/sizeChanger, i/sizeChanger);
  }
  
  // Counts down
  for (int i = trailSize-1; i > 0; i--) {
    trailX[i] = trailX[i-1];
    trailY[i] = trailY[i-1];
  } 
  
}

}
