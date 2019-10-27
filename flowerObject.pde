Flower myFlower1;  // the first instance of the Flower class
Flower myFlower2;
Flower myFlower3;

float randNum = random(255);

void setup() {
  size(1600,1200);
  background(#43AF76);
  
  int _r1= 60;
  int _petals=7;
  float _x=width/2;
  float _y=height/2;
  int _pc=#FFA000;
  myFlower1 = new Flower(_r1,_petals,_x+random(-200,-190),_y,_pc);
  myFlower2 = new Flower(_r1,_petals,_x,_y,_pc);
  myFlower3 = new Flower(_r1,_petals,_x+random(199,200),_y,_pc);

}

void draw(){
  background(#43AF76);
  
  myFlower1.display();
  myFlower1.movement();
  myFlower1.bounce();
  
  myFlower2.display();
  myFlower2.movement();
  myFlower2.bounce();
  
  myFlower3.display();
  myFlower3.specialMovement();
  myFlower3.bounce();

  
}
