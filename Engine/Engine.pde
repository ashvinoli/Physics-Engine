All_masses samples = new All_masses(2);

void setup() {
  size(800, 800);
  frameRate(1);
}

void draw() { 
   background(255);
   samples.show_all();
   samples.force_for_all();
   samples.update_all();
}
