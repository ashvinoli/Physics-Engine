class Point_mass{
   PVector pos;
   PVector vel;
   PVector acc;
   float mass;
   float charge;
   float G = 6.67 * pow(10,-11);
   float K = 9 * pow(10,9);
   PVector force;
   
   Point_mass(float x, float y, float v_x, float v_y, float m, float c){
     pos = new PVector(x,y);
     vel = new PVector(v_x,v_y);
     acc = new PVector(0,0);
     force = new PVector(0,0);
     mass = m;
     charge = c;
   }
   
   void show(){
      fill(0,100,150);
      ellipse(pos.x,pos.y,10,10);
   }
   
   void calculate_force(Point_mass[] masses, int size){
     force.x = 0;
     force.y = 0;
     PVector unit_vector = new PVector(0,0);
     PVector radius_vector = new PVector(0,0);
     float gravity_magnitude;
     PVector gravity_force = new PVector(0,0);
     float charge_magnitude;
     PVector charge_force = new PVector(0,0);
     float radius_length;
     float magnitude;
     for (int i=0;i<size;i++){
         radius_vector.x = (masses[i].pos.x-pos.x);
         radius_vector.y = (masses[i].pos.y-pos.y);
         magnitude = pow(radius_vector.x,2)+ pow(radius_vector.y,2);
         radius_length = pow(magnitude,0.5);
         unit_vector.x = radius_vector.x/radius_length;
         unit_vector.y= radius_vector.y/radius_length;
         gravity_magnitude = G * (masses[i].mass * mass/pow(radius_length,2));
         charge_magnitude = K * (masses[i].charge * charge/pow(radius_length,2));
         gravity_force.x = gravity_magnitude * unit_vector.x;
         gravity_force.y = gravity_magnitude * unit_vector.y;
         
         //Electrical force acts outwards from the line joining centre of two like charges
         charge_force.x = -charge_magnitude * unit_vector.x;
         charge_force.y = -charge_magnitude * unit_vector.y;
         force = force.add(gravity_force.add(charge_force));
     }
   }
   
   void update(){
     acc.x = force.x/mass;
     acc.y = force.y/mass;
     vel.add(acc);
     //vel.limit(30);
     pos.add(vel);
   }
     
}
