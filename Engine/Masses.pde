class All_masses{
   Point_mass[] masses;
   
   All_masses(int size){
     masses = new Point_mass[size];
     //The parameters for point mass are x_pos, y_pos, x_velocity, y_velocity, mass,charge
     masses[0] = new Point_mass(300,400,0,-30,1,0.05);
     masses[1] = new Point_mass(500,400,0,30,1,-0.05);
     //If you change the number in Engine to 3 make sure to add another instance like below
     //masses[2] = new Point_mass(400,400,0,-8,1,0.05);
     
   }
   
   void force_for_all(){
     //temp_masses is the collection of Point_masses other than itself
    
     int tracker;
      for (int i = 0; i< masses.length;i++){
      Point_mass[] temp_masses;
      temp_masses = new Point_mass[masses.length-1];
        tracker = 0;
           for (int j=0; j< masses.length;j++){
                if (i!=j){
                    temp_masses[tracker] = masses[j];
                    tracker += 1;
                }
           }
         masses[i].calculate_force(temp_masses,temp_masses.length);
       } 
   }
   void show_all(){
     for (int i = 0; i< masses.length;i++){
          masses[i].show();
     }
   }
   void update_all(){
       for (int i = 0; i< masses.length;i++){
          masses[i].update();
     }
   }
   
}
