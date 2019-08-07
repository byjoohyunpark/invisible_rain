class Particle {
  float x, y, r;

  int lifeTime;
  int killTime = 20;
  
  PVector pos;

  color c;
  float op;
  float pSize;

  Particle() {
    x = random(w);
    y = random(h);

    pos = new PVector(x, y);

    lifeTime = 0;
    op = 0;
    if (random(100) < 8) {  
      c = color(82, 0, 255);
    } else {
      c = color(255);
    }
    pSize = random(3);
  }

  void show() {
    stroke(c, op);
    strokeWeight(pSize);
    line(pos.x, pos.y, pos.x, pos.y);
    //fill(c, op); 
    //ellipse(ppos.x, ppos.y, 1, 1);
  }

  void update() {
    lifeTime++;

    //if (r < 6) {
    //  r+= .1;
    //}
    if (op < 255) {
      op += random(8,12);
    }
  }
  
  boolean isReadyToDie() {
    if ( lifeTime > random(200)) {
      return true;
    } else {
      return false;
    }
  }
  

}
