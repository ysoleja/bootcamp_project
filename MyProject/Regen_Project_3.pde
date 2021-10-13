void setup() {
  size (800, 500);
}

void draw () {
  background(255);
  noStroke();
  translate(width/2, height/2);

  float wave1 = sin(radians(frameCount))/50;
  float wave2 = cos(radians(frameCount))/50;

  for (int i = 0; i < 1000; i++ ) {
    rotate (90);
    fill(255, 0, 0, 150);
    circle(0, i-wave1*3000, map(i, 0, 1000, 1, frameCount)); 
    fill (0, 0, 255, 100);
    circle (0, i-wave2*3000, map(i, 0, 1000, 1, frameCount));
  }
}
