//hinge is the point about which the pendulums will rotate
PVector hinge = new PVector(500,50);
//A collection is a collection of beads with 4 beads as of now
beads collection  = new beads(4,hinge);


void setup() {
  size(1000, 800); 
  frameRate(100);
}

void draw() { 
   background(255);
   fill(255,0,0);
   ellipse(500,50,10,10);
   collection.show_all();
}
