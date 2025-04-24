//unit 4 Advanced Drawing Project
color brickRed = #463f3a;
color moon = #f8edeb;
color cherryPink = #ffe5ec;
color butterCream = #fefae0;
color darkYellow = #ffbd00;
color darkPink = #ffc2d1;
int i = 0;
void setup(){
  size(800, 800);
  background(0);
  strokeWeight(2);
  walls();
  Moon();
  //flower();
  while (i < 8){
    flower();
    i = i +1;
  
  }
    
}

void draw(){


}

void walls(){
  int i = 1;
  int j = 1;
  int k = 1;
  pushMatrix();
  translate(0, 350);
  fill(brickRed);
  rect(0,0, 800, 300);
  while (i <= 6){ 
    line(0, 60*i, 800, 60*i);
    i = i + 1;
  }
  
  //veritical brick lines
  while (j < 5){
    line(160*j, 0, 160*j, 60);
    line(160*j, 60*2, 160*j, 180);
    line(160*j, 60*4, 160*j, 60*5);
    j = j + 1;
  }
  
  //horizontal brick lines
  while (k < 6){
    line(160*k - 80, 0, 160*k - 80, 0);
    line(160*k - 80, 60*1, 160*k - 80, 60*2);
    line(160*k - 80, 60*3, 160*k - 80, 60*4);
    k = k + 1;
  }
  popMatrix();
}



void flower(){
  float x = random(0, 800);
  float y = random(400, 600);
  pushMatrix();
  translate(x, y);
  
  // center
  fill(255, 204, 0);
  circle(0, 0, 25);
  stroke(darkYellow);
  fill(butterCream);

  // petals
  rotate(1.5);
  scale(0.8);
  float angle = 0;
  while (angle <= TWO_PI) {
    pushMatrix();
    rotate(angle);
    ellipse(0, -30, 20, 40); // draw petal upward, rotated around center
    fill(cherryPink);
    stroke(darkPink);
    popMatrix();
    angle += PI / 4; // 30 degrees per petal (12 total)
  }

  popMatrix();
}

//sky functions
void Moon(){
  pushMatrix();
  float x = random(50,750);
  float y = random(50, 290);
  float i = random(-40,40);
  pushMatrix();
  translate(x, y);
  fill(moon);
  circle(0, 0, 80);
  fill(0);
  circle(i,0, 80-i);
 
  popMatrix();
}

void star(){




}
