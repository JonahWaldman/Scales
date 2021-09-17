void setup() {
  size(600, 600);
}



void draw(){
  background(0,0,0);
  for(int y = -100; y < 600; y+=20)
    for(int x = -100; x < 600; x+=100)
    scale(x,y);
  
}
void scale(int x, int y){
  int diam = 0;
float g = 0;
noFill();
//strokeWeight(1);
while(diam < 30){
  stroke(g-95,g-80,g);
bezier(x, y, x+diam+400, y+diam+40, x+570, y+200, x+70, y+120);
  diam++;
  g+=255/30.0;
  
//Other Side of x
bezier(x, y, x-diam, y-diam-40, x+570, y+170, x+70, y+120);
  diam++;
  g+=255/30.0;
}

}
