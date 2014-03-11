color bg = #37224A;
color f  = #F3A358;
color f1 = #f3585a;
color f2 = #f3f158;

int petals = 70;
int Newpetals = petals/4;
float Radius,theta;

Circle[] innerCircles = new Circle[Newpetals];

void setup() {
  size(700, 700);
  background(bg);

 Radius = width/4;

  for (int i=0; i < Newpetals; i++) {
    int dir = -1;
    innerCircles[i] = new Circle(theta, dir, Radius);
    theta += 2*PI/Newpetals;
  }
}

void draw() {
    background(bg);
    for (int i=0; i<innerCircles.length; i++) {
    innerCircles[i].run();
  }
}



