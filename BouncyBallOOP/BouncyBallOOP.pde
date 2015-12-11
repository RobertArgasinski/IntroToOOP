Ball b;    //declare a new Ball object called b
Ball b2;

void setup() {
  size(800, 600);
  b = new Ball(100, 0, 100, 255);      //initialize b as a new object of the Ball class
  b2 = new Ball(200, 255, 0, 0);
}

void draw() {
  background(0);
  b.display();  //call b's display() method
  b2.display();
  b.run();
  b2.run();
  b.bounce();
  b2.bounce();
}