float time;

// Planet1, and it's moons
Planet p1 = new Planet(200, 60, 60, 30, 170);
Planet m1 = new Planet(30, 20, 30, 60, 120);
Planet m2 = new Planet(50, 40, 20, 35, 20);

void setup() {
  size(800, 600, P3D);
  noStroke();
  time = 0;
  sphereDetail(10);
}

void draw() {
  background(0);
  
  // Center
  translate(width/2, height/2, 0);
  
  // Lights
  ambientLight(30, 30, 30);
  pointLight(255, 255, 255, 0, 0, 0);
  
  // Sun
  pushMatrix();
    rotateY(time / 3);
    emissive(255, 128, 0);
    sphere(50);
    emissive(0, 0, 0);
  popMatrix();

  // Planet 1
  pushMatrix();
  //scale(2);
    p1.move(time * 0.7);
    translate(p1.x, p1.y, p1.z);
    rotateZ(PI/4);
    
    pushMatrix();
      rotateY(time*2);
      fill(255, 0, 255);
      box(13);
      spotLight(255, 255, 255, 0, 0, 0, 0, -1, 0, 30, 10);
    popMatrix();
    
    // Moon 1
    pushMatrix();
      m1.move(time * 3);
      translate(m1.x, m1.y, m1.z);
      fill(0, 255, 255);
      sphere(3);
    popMatrix();
    
    // Moon 2
    pushMatrix();
      m2.move(time * 2);
      translate(m2.x, m2.y, m2.z);
      fill(255, 70, 120);
      sphere(4);
    popMatrix();
  popMatrix();
  
  
  //println(time);
  time += 0.01;
}
