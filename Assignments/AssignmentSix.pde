float Planet1X = 1000;
float Planet2X = 1300;
float Planet3X = 1600;
float Planet1Y = random(0, height);
float Planet2Y = random(0, height);
float Planet3Y = random(0, height);
float redPlanet1 = random(0, 255);
float greenPlanet1 = random(0, 255);
float bluePlanet1 = random(0, 255);
float redPlanet2 = random(0, 255);
float greenPlanet2 = random(0, 255);
float bluePlanet2 = random(0, 255);
float redPlanet3 = random(0, 255);
float greenPlanet3 = random(0, 255);
float bluePlanet3 = random(0, 255);
int pressed = 0;
int pressedState = 0;


void setup(){
  size(1000, 750);
}

void draw(){
  noCursor();
  if (pressedState == 1){
  background(0);
  Normandy();
  Planets();
  for (int x = 0; x < 10; x++){
    stars();}
  } else {
    background(0);
    titleCard();
  }
}

void mousePressed(){
  pressed = pressed + 1;
  pressedState = (pressed % 2);
}

void titleCard(){
  fill(255);
  textSize(20);
  text("In the year 2148, explorers on Mars discovered the remains of an ancient spacefaring civilization.", 0, 375); 
  text("In the decades that followed, these mysterious artifacts revealed startling new technologies, enabling", 0, 395);
  text("travel to the furthest stars. The basis for this incredible technology was a force that controlled the very", 0, 415);
  text("fabric of space and time.They called it the greatest discovery in human history.", 0, 435);
  text("The civilizations of the galaxy call it... MASS EFFECT", 0, 485);
}

void stars(){
  int centerX = (round(random(0, width)));
  int centerY = (round(random(0, height)));
  fill(255);
  ellipse(centerX, centerY, 5, 5);
}

void Planets(){
  if (Planet1X > 0){
    Planet1X = Planet1X - 10;
  } else {
    Planet1X = Planet1X + 1000;
    Planet1Y = random(0, height);
    redPlanet1 = random(0, 255);
    greenPlanet1 = random(0, 255);
    bluePlanet1 = random(0, 255);
  }
  fill(redPlanet1, greenPlanet1, bluePlanet1);
  ellipse(Planet1X, Planet1Y, 80, 80);
  
  if (Planet2X > 0){
    Planet2X = Planet2X - 10;
  } else {
    Planet2X = Planet2X + 1000;
    Planet2Y = random(0, height);
    redPlanet2 = random(0, 255);
    greenPlanet2 = random(0, 255);
    bluePlanet2 = random(0, 255);
  }
  fill(redPlanet2, greenPlanet2, bluePlanet2);
  ellipse(Planet2X, Planet2Y, 80, 80);
  
  if (Planet3X > 0){
    Planet3X = Planet3X - 10;
  } else {
    Planet3X = Planet3X + 1000;
    Planet3Y = random(0, height);
    redPlanet3 = random(0, 255);
    greenPlanet3 = random(0, 255);
    bluePlanet3 = random(0, 255);
  }
  fill(redPlanet3, greenPlanet3, bluePlanet3);
  ellipse(Planet3X, Planet3Y, 80, 80);
}

void Normandy(){
  int offset1 = 5;
  int offset2 = 40;
  int offset3 = 25;
  fill(224, 222, 222);
  ellipse(mouseX, mouseY, 175, 30);
  rectMode(CENTER);
  fill(98, 98, 98);
  rect(mouseX + offset1, mouseY + offset2, 80, 20);
  rect(mouseX + offset1, mouseY - offset2, 80, 20);
  fill(0);
  textSize(12);
  text("NORMANDY SR1", mouseX - offset3, mouseY);
}
