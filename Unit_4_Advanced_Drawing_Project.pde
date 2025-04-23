//unit 4 Advanced Drawing Project
color brickRed = #463f3a;
color moon = #f8edeb;
color cherryPink = #f9bec7;

void setup(){
  size(800, 800);
  background(0);
  strokeWeight(2);
  walls();
  Moon();
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

void flower(){
  float x = random(0, 800);
  float y = random(300, 650);
  pushMatrix();
  translate(x, y);
  circle(0, 0, 20);
  //pedals
  
  
  
  
  popMatrix();

}
