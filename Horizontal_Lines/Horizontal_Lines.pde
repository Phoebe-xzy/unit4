//Horizontal Lines
void setup(){
  background(255);
  size(400, 400);
  int i = 1;
  while (i < 20){
    stroke(0);
    strokeWeight(2);
    line(0, 20*i, 400, 20*i);
    i = i + 1;
  }
}
