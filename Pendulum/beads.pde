class beads{
   bead[] my_beads;
   
   beads(int size, PVector hinge){
     my_beads = new bead[size];
     //initialization of a new beat is done by providing it hinge, length, and initial angle
     for (int i =0; i< my_beads.length ;i++){
       my_beads[i]= new bead(hinge,50*(i+1),35*(i+1));
     } 
 }
   
   void show_all(){
    for (int i=0; i< my_beads.length;i++){
       my_beads[i].show();
       my_beads[i].update();
    }
   }
  
}
