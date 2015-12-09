int CatColorHead=#555351;
int CatColorLeftEar=#555351;
int CatColorRightEar=#555351;

void setup(){
  size(1300, 820);
}

void draw(){
  background(255);
  
  //atom 1
  fill(255);
  stroke(15);
  ellipse(200, 100, 5, 5);
  
  //atom 2
  fill(255);
  stroke(15);
  ellipse(210, 110, 5, 5);
  
  //atom 3
  fill(255);
  stroke(15);
  ellipse(190, 110, 5, 5);
  
  textSize(18);
  fill(0);
  text("Atoms are colorless.", 120, 140);
  
  //cat's head
  fill(85, 83, 81);
  stroke(15);
  ellipse(1000, 110, 65, 65);
  
  //left eye
  fill(0);
  stroke(15);
  ellipse(990, 100, 7, 7);
  
  //right eye
  fill(0);
  stroke(15);
  ellipse(1010, 100, 7, 7);
  
  //white part of left eye
  fill(255);
  stroke(15);
  ellipse(991, 98, 3, 3);
  
  //white part of right eye
  fill(255);
  stroke(15);
  ellipse(1011, 98, 3, 3);
  
  //left ear
  fill(85, 83, 81);
  stroke(15);
  triangle(974, 88, 978, 70, 1000, 77);
  
  //right ear
  fill(85, 83, 81);
  stroke(15);
  triangle(1002, 77, 1020, 70, 1028, 92);
  
  //nose
  fill(0);
  stroke(15);
  triangle(998, 108, 1000, 110, 1002, 108);
  
  //mouth
  fill(0);
  stroke(15);
  arc(1001, 120, 7, 7, radians(0), radians(180));
  
  textSize(18);
  fill(0);
  text("Cats are made of atoms.", 900, 170);
  
  textSize(18);
  fill(0);
  text("Therefore, cats are colorless.", 500, 400);
  
   //cat's head
  fill(CatColorHead);
  stroke(15);
  ellipse(630, 460, 65, 65);
  
  //left eye
  fill(0);
  stroke(15);
  ellipse(620, 450, 7, 7);
  
  //right eye
  fill(0);
  stroke(15);
  ellipse(640, 450, 7, 7);
  
  //white part of left eye
  fill(255);
  stroke(15);
  ellipse(621, 448, 3, 3);
  
  //white part of right eye
  fill(255);
  stroke(15);
  ellipse(641, 448, 3, 3);
  
  //left ear
  fill(CatColorLeftEar);
  stroke(15);
  triangle(602, 440, 606, 418, 630, 427);
  
  //right ear
  fill(CatColorRightEar);
  stroke(15);
  triangle(632, 427, 650, 418, 656, 440);
  
  //nose
  fill(0);
  stroke(15);
  triangle(628, 458, 630, 460, 632, 458);
  
  //mouth
  fill(0);
  stroke(15);
  arc(631, 470, 7, 7, radians(0), radians(180));
  
  textSize(50);
  fill(0);
  text("Logic. You're doing it wrong.", 320, 660);
  
}

void mousePressed(){
    CatColorHead=255;
    CatColorLeftEar=255;
    CatColorRightEar=255;
  }
