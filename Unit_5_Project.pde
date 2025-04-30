//Unit 5 Project
color darkPurple = #390099;
color lightPurple = #cdb4db;
color white = #ffffff;
color black = #000000;
color pink = #ffa5ab;
color lightBlue = #90e0ef;
color lightGreen = #adc178;

//Target---------------------
float x, y, p, q,// position
    d;//diameter

//Key Variables -------------------
boolean aKey, dKey, wKey, sKey;
boolean downKey, upKey, leftKey, rightKey;

float ballx, bally, balld;
float vx = 1, vy = -20;
float ax, ay;

void setup(){
  size(600, 600);
  x = width/2 - 200;
  y = height/2;
  d = 100;
  
  p = width/2 + 200;
  q = height/2;
  
  ballx = width/2;
  bally = height/2;
  balld = 50;
  
  ax = 0;
  ay = 1;

}
void draw(){
  strokeWeight(5);
  background(pink);
  stroke(white);
  
  //player1
  fill(darkPurple);
  circle(x, y, d);
  
  //pkayer2
  fill(lightPurple);
  circle(p, q, d);
  
  
  //bouncing circle
  fill(lightBlue);
  circle(ballx, bally, balld);

  
   //movement
  ballx += vx;
  bally += vy;
  
  //gravity
  vx += ax;
  vy += ay;
  
  //bouncing off walls
  if (bally <= 0 + balld/2) { // top
    vy = -vy * 0.95;
    bally = balld/2;
  }
  
  if (bally >= height -balld/2){ //bottom
    vy = -vy * 0.95;
    bally = height -balld/2;
  }
  
  
  if (ballx <= 0 + balld/2) { // right
    vx = -vx * 0.95;
    ballx = balld /2;
  }
  
  if (ballx >= width - balld/2){ // left
    vx = -vx * 0.95;
    ballx = width - balld /2;
    }
    
  if (dist(x, y, ballx, bally) <= d/2 + balld/2){
    
    vx = vy = 0;
      
    }
  
  if (aKey) x = x - 5;
  if (dKey) x = x + 5;
  if (wKey) y = y - 5;
  if (sKey) y = y +5;
  
  if(rightKey) p = p+5;
  if(leftKey) p = p-5;
  if(upKey) q = q -5;
  if(downKey) q = q +5;
  
}

void keyPressed(){
  if (key == 'a') aKey = true;
  if (key == 'd') dKey = true;
  if (key == 'w') wKey = true;
  if (key == 's') sKey = true;
  
  if (keyCode == RIGHT) rightKey = true;
  if (keyCode == LEFT) leftKey = true;
  if (keyCode == UP) upKey = true;
  if (keyCode == DOWN) downKey = true;
  
}

void keyReleased(){
  if (key == 'a') aKey = false;
  if (key == 'd') dKey = false;
  if (key == 'w') wKey = false;
  if (key == 's') sKey = false;
  
  if (keyCode == RIGHT) rightKey = false;
  if (keyCode == LEFT) leftKey = false;
  if (keyCode == UP) upKey = false;
  if (keyCode == DOWN) downKey = false;
  
}
