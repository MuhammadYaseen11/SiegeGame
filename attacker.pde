class attacker {
  int xspeed;//initial pos

  int ypose;
  int yspeed;
  int xpose;//rendering pos
  
  attacker(int a, int b, int c, int d) {
    xpose=a;
    ypose=b;
    xspeed=c;
    yspeed=d;
  }

  // creating an attacker
  void render() {

    rectMode(CENTER);
    fill(189,255,89);
    rect(xpose, ypose, 25, 100);
  }

  // attackers will move along y-axis/in upward direction
  void move() {
    ypose=ypose-yspeed;
  }

// creating multiple attackers
  void checker() {
    if (ypose<0) {
      ypose=700;
      xpose=xpose+xspeed;
    }
    if (xpose>790)
      xspeed=-xspeed;

    if (xpose<30)
      xspeed=-xspeed;
  }

  // creating collision method
  // When collision occurs,
  // assign 1 to global variable count
  void crash_test() {

    if (((abs((xpose-a1.xpose))<=30)) && (abs((ypose-a1.ypose))<=170))
      count = 1;
  }
  
  // using update() method for simplicity
  void update() {
    render();
    move();
    checker();
    crash_test();
  }
}
