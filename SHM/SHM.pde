// Initialize the boxes with their position and length and width
Box box1 = new Box(600,400,400,400);
Box box2 = new Box(400,200,400,400);
void setup() {
  size(800, 800); 
  frameRate(100);
}

void draw() { 
   background(255);
   box1.show();
   box2.show();
   box1.update();
   box2.update();
}
