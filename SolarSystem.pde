void setup() {
  size(440, 220, OPENGL);
  noStroke();
  fill(255);
}

void draw() {
  //lights();
  
  // 1.
  //ambientLight(60, 60, 60);
  
  // 2.
  //directionalLight(255, 255, 255, -1, 0, 0);
  
  // 3.
  //pointLight(255, 255, 255, width/2-300, height/2+50, -150);
  
  // 4.
  //spotLight(255, 255, 255, width/2, height/2, 800, 0.1, 0, -1, PI/30, 1);
  
  // 5.
  directionalLight(0, 0, 255, -1, 0, 0);
  pointLight(0, 255, 0, width/2-300, height/2+50, -200);
  spotLight(255, 0, 0, width/2, height/2, 800, 0.1, 0, -1, PI/30, 1);
  
  background(0);
  rotateY(PI/24);
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
