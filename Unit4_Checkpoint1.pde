//Phoebe Xie Unit 4 checkpiont1
//April 2nd, 2025

void setup(){
  size(800, 800);
  background(250);
}

void draw(){
  house();

}

void house(){
  pushMatrix();
  translate(400, 400);
  
  //roof
  noStroke();
  fill(0);
  triangle(0, -200, -200, 0, 200, 0);
  
  rect(-200, 0, 400, 300);
  rect(-50,200, )
  
  popMatrix();
  
}
