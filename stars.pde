

ArrayList <Particle> stars = new ArrayList <Particle> ();
void setup() {
  size(1000, 1000);
  for (int i = 0; i<50; i++) {
    stars.add(new Particle ());
  }
  stars.add(new OddballParticle());
}

void draw() {
  background(0);
  for (int i = 0; i<51; i++) {
    stars.get(i).move();
    stars.get(i).show();
  }
}
