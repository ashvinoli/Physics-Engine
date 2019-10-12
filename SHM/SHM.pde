// Initialize the boxes with their position and length and width
Box box1 = new Box(500,500,400,400);
Box box2 = new Box(300,500,400,400);
void setup() {
  size(800, 800); 
  frameRate(50);
}

void draw() { 
   background(255);
   box1.show();
   box2.show();
   box1.update();
   box2.update();
}
