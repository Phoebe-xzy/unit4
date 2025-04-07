//Phoebe Xie Unit 4 checkpiont1
//April 2nd, 2025
color azure = #70d6ff;
color darkBlue =#03045e;

void setup(){
  size(800, 800);
  background(250);
}

void draw(){
  //house(500, 400);
  //house(100, 100);
  //house(200, 300);
  house(400, 400);

}

void house(int x, int y){
  pushMatrix();
  translate(x, y);
  
  //roof
  //noStroke();
  stroke(darkBlue);
  strokeWeight(8);
  fill(azure);
  triangle(0, -200, -200, 0, 200, 0);
  rect(-200, 0, 400, 300);
  fill(255);
  rect(-50,200, 100, 100);
  circle(-100,80,80);
  circle(100, 80, 80);
  square(-40, -120, 80);
  popMatrix();
  
}
