class Flower {
  
 // Variables
 
 float r;        // radius of the flower petal
 int n_petals;   // number of petals 
 float x;        // x-position of the center of the flower
 float y;        // y-position of the center of the flower
 int petalColor; // hexadecimal number for the color of petals
 float speedX = random(30);
 float speedY = random(30);
 
 

 
 
Flower(float temp_r, int temp_n_petals, float temp_x, float temp_y, int temp_petalColor) {
  r=temp_r;
  n_petals = temp_n_petals;
  x=temp_x;
  y=temp_y;
  petalColor=temp_petalColor;
}

void display () {
  
  
  
  fill(petalColor);
  for (float i=0;i<PI*2;i+=2*PI/n_petals) {
  float ballX;
  float ballY;
//  ballX=width/2 + r*cos(i);
//  ballY=height/2 + r*sin(i);
  ballX=x + r*cos(i);
  ballY=y + r*sin(i);
  ellipse(ballX,ballY,r,r); 
  }
  fill(200,0,0);
  ellipse(x,y,r*1.2,r*1.2);

}


void movement () {

  x = x + speedX;
  
  y = y + speedY;
   
}



void bounce () {
  
  if(x > width) {
   speedX = speedX - 30;
  }
  if(x < 0) {
    speedX = random(30);
  }
  if(y > height) {
   speedY = speedY -30;
  }
  if(y < 0) {
    speedY = random(30);
  }
  
  
  
}

}
