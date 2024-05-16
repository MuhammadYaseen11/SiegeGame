class player {
  int x=400;//initial pos
  int ypose=70;
  int xspeed=0;
  int xpose;//rendering pos

  void render() {

    fill(194,156,91);
    ellipse(xpose, ypose, 50, 50);
    rectMode(CENTER);
    rect(xpose, 145, 50, 100);
  }
  
// player will move along x-axis
// controlled by arrow keys
  void move() {
    xpose=x+xspeed;
  }

  void checker() {
    if (xpose>800) {
      x=25;
      xspeed=0;
    }
    if (xpose<0)
    {
      x=775;
      xspeed=0;
    };
  }
  void update() {
    render();
    move();
    checker();
  }
}
