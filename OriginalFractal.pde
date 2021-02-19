public void setup(){
  size(400, 400);
  background(255);
  
}

public void draw(){
  //fill(255);
  //noStroke();
  fractal(100, 100);
}

public void fractal(float x, float y){
  quad(x, y, 1.5*x, 1.5*y, x, 2*y, 0.5*x, 1.5*y);
  if(x>=2){
    fractal((x-5), (y-5));
  }
}

