TrailObject myObject;

//Made with inspiration from https://processing.org/tutorials/arrays/ and in collaboration with Mathilde-Emilie Laursen MED1

int DefaultColor = 0;

void setup() { 
  size(800, 600);
  fill(DefaultColor);
 
  
  myObject = new TrailObject();
}

void draw() {
  background(0);
  
  
  myObject.trailEffect();
    
 
 
  
}
