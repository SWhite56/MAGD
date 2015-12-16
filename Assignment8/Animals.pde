int pressed = 0;
int pressedState = 0;

void setup(){
  size(1000, 650);
  myCat = new Cat();
  myMouse = new Mouse();
  myTimer = new Timer(3000);
}

void draw(){
  if (pressedState == 1){
    background(0);
    gameOverScreen();
  } else {
  background(255);
  myCat.display();
  myMouse.display();
  myMouse.move();
  if (myTimer.isFinished()){
    fill(0);
    textSize(30);
    text("You'll never catch me, kitty! Mwahahaha!", 200, 40);
  }
}
}

Cat myCat;
Mouse myMouse;
Timer myTimer;

void gameOverScreen(){
  fill(255);
  textSize(50);
  text("Mouse: 1       Cat: 0", 250, 325);
}

void mousePressed(){
  pressed = pressed + 1;
  pressedState = (pressed % 2);
}


class Mouse {
  int centerX, centerY;
  PImage mouse;

  Mouse() {
    centerX = round(random(0, 400));
    centerY = round(random(0, 250));
  }

  void display() {
    mouse = loadImage("https://cloud.githubusercontent.com/assets/14317646/11834455/3a3a8020-a392-11e5-9bf6-9f79756c22e2.jpg");
    mouse.resize(0, 100);
    image(mouse, centerX, centerY);
  }

  void move() {
    if (keyPressed) {
      if (key == 'w') {
        centerY = centerY - 8;
      }
      if (keyPressed) {
        if (key == 'a') {
          centerX = centerX - 8;
        }
        if (keyPressed) {
          if (key == 'd') {
            centerX = centerX + 8;
          }
          if (keyPressed) {
            if (key == 's') {
              centerY = centerY + 8;
            }
          }
        }
      }
    }
  }
}


class Cat {
  int y;
  PImage cat;

  Cat() {
    y = 250;
  }

  void display() {
    cat = loadImage("https://cloud.githubusercontent.com/assets/14317646/11834449/2b7c5176-a392-11e5-88f7-83e4b61e1f01.jpg");
    image(cat, 400, y);
  }
}


class Timer {
  int savedTime;  
  int totalTime;  

  Timer(int _totalTime) {
    totalTime = _totalTime;
  }

  void start() {
    savedTime = millis();
  }

  boolean isFinished() {

    int passedTime = millis() - savedTime;
    if (passedTime > totalTime) {
      return true;
    } else {
      return false;
    }
  }
}
