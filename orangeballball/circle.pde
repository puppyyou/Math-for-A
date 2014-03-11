class Circle {
  float x, y, sz, theta, radius;
  int dir;
 
  Circle(float _theta, int _dir, float _radius) {
    theta = _theta;
    dir = _dir;
    radius = _radius;
  }

  void run() {
    move();
    display();
  }

  void move() { 
    //speed control 
    //circular movement
    x = cos(theta)*radius; 
    y = sin(theta)*radius;  
    theta+= -0.01;
  }

  void display() {
    pushMatrix();
    translate(width/2, height/2);
    noStroke();
    fill(f);
    ellipse(x, y, 15, 15);
    fill(f1,70);
    ellipse(x, y, 260, 260);
    fill(f2,50);
    ellipse(x, y, 100, 100);
    popMatrix();
    
  }
}
