void setup() {
  size(440, 220, OPENGL);
  noStroke();
  fill(255);
}

void draw() {
  //lights();
  ambientLight(70, 70, 70);
  directionalLight(0, 255, 255, width/2, height/2, 200);
  
  rotateY(PI/10);
  background(0);

  
  translate(width/2, height/2, -20);
  int dim = 18;
  for(int i = -height/2; i < height/2; i += dim * 1.4) {
    for(int j = -height/2; j < height/2; j += dim * 1.4) {
      pushMatrix();
        translate(i, j, -j);
        box(dim, dim, dim);
      popMatrix();
    }
  }
}
