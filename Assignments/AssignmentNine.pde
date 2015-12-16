String [] Descriptor;
String currentDescriptor;
int randomDescriptor;

void setup(){
  size(800, 600);
  background(255);
  myTurkey = new Turkey();
  myScaredTurkey = new ScaredTurkey();
  myTimer = new Timer(5000);
  Descriptor = new String [2];
  Descriptor[0] = "good";
  Descriptor[1] = "bad";
  randomDescriptor = (round(random(Descriptor.length-1)));
  currentDescriptor = Descriptor[randomDescriptor];
  fill(0);
  textSize(30);
  text("Thanksgiving. It's a " + currentDescriptor + " day to be a turkey.", 10, 570);
}

void draw() {
  myTurkey.display();
  myScaredTurkey.display();
  fill(0);
  textSize(20);
  text("Th- that's not going to happen to me... i- is it?", 30, 40);
  if (myTimer.isFinished()){
    fill(0);
    textSize(20);
    text("...Just keep telling yourself", 500, 300);
    text("that, Tom.", 500, 330);
}
}

Turkey myTurkey;
ScaredTurkey myScaredTurkey;
Timer myTimer;


class Turkey {
  int x, y;
  PImage turkey;
  
  Turkey() {
    x = 500;
    y = 325;
  }
  
  void display() {
    turkey = loadImage("https://cloud.githubusercontent.com/assets/14317646/11833640/83750862-a38a-11e5-818a-bf50a8ccf3a8.png");
    image(turkey, x, y);
  }
}


class ScaredTurkey {
  int x, y;
  PImage scaredturkey;
  
  ScaredTurkey() {
    x = 50;
    y = 50;
  }
  
  void display() {
    scaredturkey = loadImage("https://cloud.githubusercontent.com/assets/14317646/11833647/9096588e-a38a-11e5-8f81-d4c5b68ba302.jpg");
    scaredturkey.resize(0, 300);
    image(scaredturkey, x, y);
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
