// Phoebe Xie Unit 4 checkpoint1
// April 2nd, 2025

color darkBlue = #03045e;

void setup() {
  size(800, 800);
  background(250);

  float i = 0;
  float j = 0;

  while (j < height) {
    i = 0;
    while (i < width) {
      pushMatrix();
      translate(i, j);
      scale(1.0 / 3); // because each house is drawn at ~800px size, we scale down to 1/3
      house(0, 0);
      popMatrix();
      i += width / 3;
    }
    j += height / 3;
  }
}

void draw() {
  // Nothing needed
}

void house(float x, float y){
  float r;
  float k;
  r = random(-160, 160);
  k = random(-160, 160);
  
  pushMatrix();
  translate(x + 400, y + 250); // center the house inside its section
  
  stroke(darkBlue);
  strokeWeight(8);
  fill(random(0,255), random(0, 255), random(0,255));

  // Roof
  triangle(0, -200, -200, 0, 200, 0);

  // Body
  rect(-200, 0, 400, 300);

  // Door and windows
  fill(255);
  rect(-50, 200, 100, 100);
  circle(r, 80, 80);
  circle(k, 80, 80);
  square(-40, -120, 80);
  
  popMatrix();
}
