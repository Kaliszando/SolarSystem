void setup() {
  size(640, 480, P3D);
  noStroke();
  fill(255);
}

void draw() {
  lights();
  background(0);
  rotateY(PI/24);
  translate(width/2, height/2, -20);
  translate(75, -50);
  box(125, 25, 50);
  translate(-350, 100, 0);
  for (int i = 3; i < 30; i+=3) {
    sphereDetail(i);
    sphere(25);
    translate(75, 0, 0);
  }
}
