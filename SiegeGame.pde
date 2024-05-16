// simple Siege Game
// avoid upcoming attackers
PImage background;
player a1;
attacker b1;
attacker b2;
attacker b3;
attacker b4;

int count = 0;

void setup() {
  size(800, 600);
  background  = loadImage("wall1.jpg");
  background.resize(width, height);
  a1=new player();
  b1=new attacker(400, 500, -100, 1);
  b2=new attacker(100, 600, +100, 1);
  b3=new attacker(750, 300, -100, 1);
  b4= new attacker(550, 600, 100, 1);
}
void draw() {
  // value of count is 0, hence when game will play after running the program
  // and startScreen function will be called
  if (count ==0) {
    startScreen();
  }
  // when an attacker hits the defender/when collision occurs,
  // call collision method in attacker class(crash_test()) and
  // assign 1 to global variable "count"
  // when count is 1, call endScreen function
  else if (count ==1) {
    endScreen();
  }
}
void startScreen() {
  background(0);
  image(background, 0, 0);
  a1.update();
  b1.update();
  b2.update();
  b3.update();
  b4.update();
}

void endScreen() {
  background(28,142,227);
  textAlign(CENTER);
  textSize(50);
  text("Game Over",400,300);
}

void keyPressed() {
  if (keyCode==RIGHT) {

    a1.xspeed=a1.xspeed+10;
  }
  if (keyCode==LEFT) {

    a1.xspeed=a1.xspeed-10;
  }
}
