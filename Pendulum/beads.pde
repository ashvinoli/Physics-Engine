class beads{
   bead[] my_beads;
   PVector hinge = new PVector(0,0);
   
   beads(int size, PVector my_hinge){
     my_beads = new bead[size];
     hinge = my_hinge;
     //initialization of a new beat is done by providing it hinge, length, and initial angle
     my_beads[0]= new bead(hinge,100,90);
     for (int i =1; i< my_beads.length ;i++){
       my_beads[i]= new bead(my_beads[i-1].pos,100,70*i);
     } 
 }
   
   void show_all(){
    my_beads[0].show(hinge);
    my_beads[0].update(hinge);
    for (int i=1; i< my_beads.length;i++){
       my_beads[i].show(my_beads[i-1].pos);
       my_beads[i].update(my_beads[i-1].pos);
    }
   }
  
}
