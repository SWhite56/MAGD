float posX = 140;
float posY = 435;
int ballDiameter = 25;
float velocityY = 0.0;
boolean onHands = true;
boolean text1;

void setup(){
  size(900, 600);
}

void draw(){
  background(13, 154, 216);
  
  //sand
  fill(245, 209, 111);
  noStroke();
  rect(0, 500, 900, 600);
  
  //volleyball net
  fill(0);
  noStroke();
  rect(width/2, 350, 10, 150);
  
  //person 1
  noFill();
  stroke(20);
  ellipse(110, 380, 40, 40);
  line(110, 400, 110, 470);
  line(110, 470, 90, 500);
  line(110, 470, 130, 500);
  line(110, 425, 140, 440);
  line(110, 425, 140, 445);
  
  //person 2
  noFill();
  stroke(20);
  ellipse(790, 380, 40, 40);
  line(790, 400, 790, 470);
  line(790, 470, 770, 500);
  line(790, 470, 810, 500);
  line(790, 425, 760, 440);
  line(790, 425, 760, 445);
  
 //volleyball 
  fill(255);
  posY = posY - velocityY;
  if (posY < 435){
    velocityY = velocityY - 0.2;
  } else {
    velocityY = 0;
  }
  ellipse(posX, posY, ballDiameter, ballDiameter);
  if (onHands == false){
  for (int s = 0; s < 100; s = s+1){
    posX = posX + 0.1;
  }
}
if (text1 == true){
  fill(0);
  text("Oops.", 100, 350);
  text("That was awful.", 780, 350);
}
}
void mousePressed(){
  velocityY = 10;
  onHands=false;
}
  
void keyPressed(){
  text1 = true;  
}
