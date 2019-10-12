//Change the number inside the bracket i.e 2 now for no. of particles
All_masses samples = new All_masses(2);

void setup() {
  size(800, 800);
  frameRate(10);
}

void draw() { 
   background(255);
   samples.show_all();
   samples.force_for_all();
   samples.update_all();
}
