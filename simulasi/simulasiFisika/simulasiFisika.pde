import fisica.*;

FWorld world;
int ballCount = 9;

FCircle b, c;

void setup() {
  size(400, 400);
  smooth();

  Fisica.init(this);

  world = new FWorld();
  world.setGravity(0, 3.0);
  world.setEdges();

  b = new FCircle(25);
  b.setPosition(width/2, 20);
  b.setDensity(2.0);
  b.setDamping(0.0);
  b.setNoStroke();
  b.setFill(20, 100, 200);
  world.add(b);

  c = new FCircle(50);
  c.setPosition(width/2, height-20);
  c.setDensity(2.0);
  c.setVelocity (0, -50);
  c.setDamping(0.0);
  c.setNoStroke();
  c.setFill(20, 200, 100);
  world.add(c);
}

void draw() {
  background(255);

  world.step();
  world.draw();
}

