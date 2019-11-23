class Agent {
  PVector p, pOld;
  float stepSize, angle;
  boolean isOutside = false;

  Agent() {
    p = new PVector(random(width), random(-500, height));
    pOld = new PVector(p.x, p.y);
    stepSize = random(1, 10);
  }

  void update() {
    angle = radians(random(180));
    p.x += cos(angle) * stepSize;
    p.y += sin(angle) * stepSize;
    
    if(p.x < -10) isOutside = true;
    else if(p.x > width + 10) isOutside = true;
    else if(p.y < -10) isOutside = true;
    else if(p.y > height + 10) isOutside = true;
    
    if(isOutside){
      p.x = random(width);
      p.y = random(-500, height);
      pOld.set(p);
    }
    
    strokeWeight(0.3);
    line(pOld.x, pOld.y, p.x, p.y);
    
    pOld.set(p);
    isOutside = false;
  }
}
