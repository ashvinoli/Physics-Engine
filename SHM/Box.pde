class Box {
   PVector pos;
   PVector vel;
   PVector acc;
   float m;
   float k;
   PVector eq_pos;
   
   
   Box(float x, float y, float eq_x, float eq_y){
     m =  2000;
     k = 5;
     eq_pos = new PVector(eq_x,eq_y);
     pos = new PVector(x,y);
     vel = new PVector(0,0);
     acc = new PVector(0,0);
   }
   
   void show(){
      fill(0,255,0);
      rect(pos.x,pos.y,30,30);
   }
   
   void update(){
      acc.x = (-k/m)*(pos.x-eq_pos.x);
      acc.y = (-k/m)*(pos.y-eq_pos.y);
      vel.add(acc);
      pos.add(vel);
   }
     
   
}
