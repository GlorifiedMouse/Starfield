class Particle {
  double myX, myY;
  double myAngle, mySpeed;
  int size = 10, myColor, r, g, b;


  Particle() {
    myX = width/2;
    myY = height/2;
    myAngle = Math.random()*2*Math.PI;
    //System.out.println(myAngle);
    mySpeed = Math.random()*5;
    double what =(Math.random()*2);
    //System.out.println(what);
    if (what < 0.1) {
     r = 255;
     g = 255;
     b = 255;
    }
    else if (what < 1) {
      g = (int)(Math.random()*100)+100;
      r = (int)(Math.random()*55)+200;
      b = (int)(Math.random()*25)+230;
    } else {
      r = (int)(Math.random()*100)+100;
      g = (int)(Math.random()*55)+200;
      b = (int)(Math.random()*25)+230;
    }
    myColor = color(r, g, b);
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
