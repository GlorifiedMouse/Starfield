class OddballParticle extends Particle {
    OddballParticle() {
    myX = 0;
    myY = 0;
    myAngle = (Math.random()*0.5*Math.PI)+(1.5*Math.PI);
    //System.out.println(myAngle);
    mySpeed = Math.random()*10;
    r = 0;
    g = 200;
    b = 0;
    myColor = color(r, g, b);
    size = 30;
  }
  void move() {
    myX += mySpeed * Math.cos(myAngle);
    myY -= mySpeed *Math.sin(myAngle);

  }

  void show() {
    fill(myColor);
    ellipse((float)myX, (float)myY, size, size);
  }
  
  double getParticle() {
   return myX; 
  }
  
  void setParticle (int p) {
  size = p;
}
}
