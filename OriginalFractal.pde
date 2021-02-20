public void setup(){
  size(400, 400);
  background(255);
}

public void draw(){
  circs(180, 70, 70);
  circsDown(180, 387, 70);
  //tassles(120, 320);
  fill(255);
  quad(180, 67.34375, 340, 230.03516, 180, 387, 20, 230.03516);
  fractal(180, 125, 50);
  
}

public void tassles(float x, float y){
  int r = (int)(Math.random()*200);
  int g = (int)(Math.random()*200);
  noStroke();
  rect(x, y, 2, 100);
  fill(r, g, 0, 1);
  if(x<=220){
    tassles(x+2, y);   
  }
}

public void fractal(float x, float y, float l){
  stroke(255, 0, 0);
  strokeWeight(3.5);
  fill(250, 0, 0, 1.5);
  quad(x, y, x+l*.5, y+l*.5, x, y+l, x-l*.5, .5*l+y); 
  if(l<=120){
    fractal(x+l*.35, y+l*.15, l*1.25);
    fractal(x, y+l*.5, l*1.25);
    fractal(x-l*.35, y+l*.15, l*1.25);
    fractal(x, y-l*.2, l*1.25);
  }
}

public void circs(float x, float y, float r){
  strokeWeight(2.5);
  fill(255, 255, 0);
  circle(x, y, r);
  if(r>=25){
    circs(x+r/2, y+r/2, r*.85);
    circs(x, y, r*.65);
    circs(x-r/2, y+r/2, r*.85);
  }
}

public void circsDown(float x, float y, float r){
  circle(x, y, r);
  if(r>=25){
    circsDown(x+r/2, y-r/2, r*.85);
    circsDown(x, y, r*.85);
    circsDown(x-r/2, y-r/2, r*.85);
  }
}
