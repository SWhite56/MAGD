int scene = 0;
boolean timerStarted = false;
PImage treasureChest;
Box myBox;
FirstRoom myFirstRoom;
SecondRoom mySecondRoom;
Timer myTimer;


void setup() {
  size(800, 600);
  myBox = new Box();
  myFirstRoom = new FirstRoom();
  mySecondRoom = new SecondRoom();
  myTimer = new Timer();
  treasureChest = loadImage("treasure chest.jpg");
}

void draw() {
  //title screen scene, set at zero, the default
  if (scene == 0) {
    background(0);
    image(treasureChest, 300, 200);
    fill(245, 237, 0);
    textSize(70);
    text("Gold Seeker", 50, 100);
    textSize(20);
    text("Press Any Key", 30, 550);
    if (keyPressed) {
      scene = 1;
    }
  }
//the first scene, with the cave entrance, scene is set to 1. 
  if (scene == 1) {
    background(0);
    myFirstRoom.firstRoom();
    //the for loop draws the first two buttons
    for (int x = 0; x < 2; x++) {
      myBox.boxx(x);
    }
    //checks to make sure the cursor is over the first box
    if (myBox.overBox(myBox.boxes[0][0], myBox.boxes[0][1], 40, 40)) {
      if (mousePressed) {
        scene = 2;
      }
    }
    //checks to make sure the cursor is over the second box
    if (myBox.overBox(myBox.boxes[1][0], myBox.boxes[1][1], 40, 40)) {
      if (mousePressed) {
        scene = 3;
      }
    }
    //text near the boxes, displaying what they mean
    textSize(20);
    fill(myBox.boxes[0][2]);
    text("Okay.", 250, 210);
    text("I'm ready.", 250, 235);
    fill(myBox.boxes[1][2]);
    text("On second thought, no.", 480, 320);
    text("I don't want to die!", 480, 345);
  }
  //when scene is 2, after you press the first box, two new boxes appear
  if (scene == 2) {
    background(255);
    mySecondRoom.secondRoom();
    for (int x = 2; x < 4; x++) {
      myBox.boxx(x);
    }
    //checks to ensure the cursor is over the first box in the new scene
    if (myBox.overBox(myBox.boxes[2][0], myBox.boxes[2][1], 40, 40)) {
      if (mousePressed) {
        scene = 4;
      }
    }
    //checks to ensure the cursor is over the second box in the new scene
    if (myBox.overBox(myBox.boxes[3][0], myBox.boxes[3][1], 40, 40)) {
      if (mousePressed) {
        scene = 5;
      }
    }
    //text near the boxes, displaying what they mean
    fill(myBox.boxes[2][2]);
    textSize(20);
    text("Silvertongue", 250, 570);
    fill(myBox.boxes[3][2]);
    text("RUN!", 480, 570);
  }
  //after you press on the second box, it makes scene = 3 and displays this
  if (scene == 3) {
    background(0);
    fill(255);
    textSize(30);
    text("...Your loss. Go on living.", 100, 50);
    text("GAME OVER", 300, 300);
  }
  //after you press the first box, it makes scene = 4 and displays this
  if (scene == 4) {
    background(0);
    fill(255);
    textSize(30);
    text("Time on Gold Seeker Expired.", 150, 200);
    text("Insert Coin", 150, 400);
    text("Continue?", 370, 260);
    text((+myTimer.passedTime - millis())/1000, 390, 300);

    if (myTimer.passedTime - millis() < 0) {
      background(255, 0, 0);
      textSize(60);
      text("GAME OVER", 200, 300);
    }
  }
  if (scene == 5) {
    background(0);
    fill(255);
    textSize(30);
    text("Time on Gold Seeker Expired.", 150, 200);
    text("Insert Coin", 150, 400);
    text("Continue?", 370, 260);
    text((+myTimer.passedTime - millis())/1000, 390, 300);
    
    if (myTimer.passedTime - millis() < 0) {
      background(255, 0, 0);
      textSize(60);
      text("GAME OVER", 200, 300);
  }
}
}


class Box {
  //array for the boxes
  int[][] boxes = { {250, 250, #00FF0A}, {480, 250, #FF0009}, 
                    {250, 500, #0017FF}, {480, 500, #EDFF00} };

  Box() {
  }

  void boxx(int x) {
    fill(boxes[x][2]);
    rect(boxes[x][0], boxes[x][1], 40, 40);
  }

  boolean overBox(int x, int y, int w, int h) {
    if (mouseX >= x && mouseX <= x + w &&
      mouseY >= y && mouseY <= y + h) {
      return true;
    } else {
      return false;
    }
  }
}

class FirstRoom {
  PImage cave;

  FirstRoom() {
    cave = loadImage("cave.jpg");
  }

  void firstRoom() {
    image(cave, 0, 0, 800, 600);

    //introduction text
    fill(8, 40, 126);
    textSize(30);
    text("Welcome, adventurer! I hear you seek untold riches.", 0, 30);
    text("Enter the cave and see for yourself the wealth it holds.", 0, 60);
    text("...Do try not to die.", 450, 575);
  }
}

class SecondRoom {
  PImage smaug;
  
  SecondRoom() {
    smaug = loadImage("smaug.jpg");
  }

  void secondRoom() {
    image(smaug, 0, 0, 800, 600);

    fill(255);
    textSize(25);
    text("The cave ends almost immediately in a large room filled with gold.", 1, 50);
    text("But you're not alone. The coins shift to reveal an eye, and a voice", 1, 80);
    text("shakes the walls. 'Aren't we the eager one?'", 1, 110);
    text("You're unarmed. And you have an average ability to Silvertongue", 1, 450);
    text("your way out of this.", 1, 470);
  }
}

class Timer {
  int time, passedTime;

  Timer() {
    time = millis(); 
    passedTime = 15000;
  }

  boolean timer() {
    if (millis() > time + passedTime) {
      return true;
    } else {
      return false;
    }
  }
}
