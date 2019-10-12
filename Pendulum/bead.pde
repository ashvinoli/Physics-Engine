class bead {
    PVector pos = new PVector(0,0);
    PVector hinge = new PVector(0,0);
    float damp_const = 0.001;
    float theta;
    float theta_d = 0.0;
    float theta_dd = 0.0;
    float g = 9.81;
    float thread_length;
    int colour = (int)random(255);
    
    bead (PVector init_hinge, float P_l, float init_theta){
       thread_length = P_l;
       theta = init_theta;
       hinge = init_hinge;
       update_pos();
    }
    void update_pos(){
      float r_angle = radians(theta);
      pos.x = hinge.x + thread_length * sin(r_angle);
      pos.y = hinge.y + thread_length * cos(r_angle);
    }
    
    void show(){
      line(hinge.x,hinge.y,pos.x,pos.y);
      strokeWeight(0.8);
      fill(colour*0.9,100,colour*0.5);
      ellipse(pos.x, pos.y,20,20);
      fill(0,0,255);
      
    }
    
    void update(){
     theta_dd = (-g/thread_length) * sin(radians(theta))-damp_const * theta_d;
     theta_d += theta_dd;
     theta += theta_d;
     update_pos();
    }
    
    
}
