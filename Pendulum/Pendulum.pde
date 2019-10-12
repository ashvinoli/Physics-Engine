//hinge is the point about which the pendulums will rotate
PVector hinge = new PVector(400,200);
//A collection is a collection of beads with 4 beads as of now
beads collection  = new beads(4,hinge);


void setup() {
  size(800, 800); 
  frameRate(100);
}

void draw() { 
   background(255);
   fill(255,0,0);
   ellipse(400,200,10,10);
   collection.show_all();
}
