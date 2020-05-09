float time;

// Planet1 and moons
Planet p1 = new Planet(200, 60, 60, 30, 170);
Planet m1 = new Planet(30, 20, 30, 60, 120);
Planet m2 = new Planet(50, 40, 20, 35, 20);

// Planet2
Planet p2 = new Planet(400, 200, 100, 70, 20);
Planet m3 = new Planet(30, 40, 30, 20, 30);
Planet m4 = new Planet(70, 60, 20, 10, 160);

// Planet3
Planet p3 = new Planet(800, 600, 300, 20, 160);
Planet m5 = new Planet(40, 50, 40, 30, 50);
Planet m6 = new Planet(90, 90, 30, 50, 130);

// Planet4

void setup() {
  size(800, 600, P3D);
  noStroke();
  time = 0;
  sphereDetail(15);
}

void draw() {
  background(0);
  
  // Center
  translate(width/2, height/2, 0);
  
  // Lights
  lights();
  lightSpecular(200, 200, 200);
  pointLight(100, 100, 100, 0, 0, 0);
  
  // Sun
  pushMatrix();
    fill(255, 255, 77);
    emissive(255, 0, 0);
    sphere(50);
    emissive(0, 0, 0);
  popMatrix();

  // Planet 1
  pushMatrix();
    p1.move(time * 0.7);
    translate(p1.x, p1.y, p1.z);
    rotateZ(PI/4);
    
    pushMatrix();
      rotateY(time*2);
      fill(30, 30, 255);
      specular(120, 120, 255);
      shininess(1);
      box(13);
      // Światło reflektorowe
      spotLight(255, 255, 255, 0, 0, 0, 0, -1, 0, 30, 10);
    popMatrix();
    
    // Moon 1
    pushMatrix();
      m1.move(time * 3);
      translate(m1.x, m1.y, m1.z);
      fill(0, 255, 255);
      specular(255, 0, 0);
      shininess(2);
      sphere(3);
    popMatrix();
    
    // Moon 2
    pushMatrix();
      m2.move(time * 2);
      translate(m2.x, m2.y, m2.z);
      fill(230, 90, 50);
      specular(0, 0, 255);
      shininess(3);
      sphere(4);
    popMatrix();
  popMatrix();
  
  // Planet 2
  pushMatrix();
  scale(1.5);
    p2.move(time * 1.2);
    rotateZ(PI/2);
    translate(p2.x, p2.y, p2.z);
    
    pushMatrix();
      fill(200, 30, 10);
      specular(0, 255, 0);
      shininess(1);
      sphere(13);
      // Światło reflektorowe
      spotLight(255, 255, 255, 0, 0, 0, 0, -1, 0, 30, 10);
    popMatrix();
    
    // Moon 3
    pushMatrix();
      m3.move(time * 2.7);
      translate(m3.x, m3.y, m3.z);
      fill(120, 120, 240);
      specular(255, 255, 10);
      shininess(1);
      sphere(4);
    popMatrix();
  
    // Moon 4
    pushMatrix();
      m4.move(time * 2.3);
      translate(m4.x, m4.y, m4.z);
      fill(255, 0, 255);
      specular(0, 255, 0);
      shininess(2);
      sphere(3);
    popMatrix();
  
  popMatrix();
  
  
  //println(time);
  time += 0.01;
}
