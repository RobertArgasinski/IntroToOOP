class Ball {
  //declaring all information (fields) contained within the Ball class
  PVector loc, vel;
  int diam;
  color c;

  //this is a constructor. you can have more than one constructor for a given class
  Ball() {
    diam = 200;
    loc = new PVector(random(diam, width-diam), random(diam, height-diam));
    c = color(random(255), random(50), random(100, 255));
    vel = new PVector(random(0, 10), random(0, 10));
  }

  //after declaring fields and setting up constructors, you can define your methods
  void display() {
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }

  void run() {
    background(0);
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
    loc.add(vel);
  }

  void bounce() {
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
    if (loc.x + diam/2 >= width) {
      vel.x = -abs(vel.x);
    } else if (loc.x - diam/2 <= 0) {
      vel.x = abs(vel.x);
    }
    if (loc.y + diam/2 >= height) {
      vel.y = -abs(vel.y);
    } else if (loc.y - diam/2 <= 0) {
      vel.y = abs(vel.y);
    }
  }
}