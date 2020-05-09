class Planet {
 public float x, y, z;
 public float a, b, c;
 
 // 0 < polar =< PI
 // 0 < azimuth < 2 * PI
 public float polarAngleRad, azimuthRad;
 
 public Planet(float a, float b, float c, int polarAngle, int azimuth) {
   this.a = a;
   this.b = b;
   this.c = c;
   this.polarAngleRad = (polarAngle * PI) / 180;
   this.azimuthRad = (azimuth * PI) / 180;
 }
 
 public void show() {
 
 }
 
 public void move(float T) {
   this.x = a * cos(polarAngleRad) * cos(azimuthRad + T);
   this.y = b * cos(polarAngleRad) * sin(azimuthRad + T);
   this.z = c * sin(azimuthRad + T);
 }
}
