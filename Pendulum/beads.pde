class beads{
   bead[] my_beads;
   
   beads(int size, PVector hinge){
     my_beads = new bead[size];
     //initialization of a new beat is done by providing it hinge, length, and initial angle
     my_beads[0]= new bead(hinge,150,-120);
     my_beads[1] = new bead(hinge,200,120);
     my_beads[2] = new bead(hinge,250,-90);
     my_beads[3] = new bead(hinge,300,90);
   }
   
   void show_all(){
    for (int i=0; i< my_beads.length;i++){
       my_beads[i].show();
       my_beads[i].update();
    }
   }
  
}
