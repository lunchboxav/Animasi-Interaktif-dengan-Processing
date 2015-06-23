import fisica.*;

FWorld world;
FBox blok1, blok2, blok3, blok4, blok5;
FCircle b;

boolean win = false;

PFont f;

void setup() {
  size(400, 400);
  smooth();

  Fisica.init(this);

  world = new FWorld();
  world.setGravity(0, 100);
  world.setEdges();

  blok1 = new FBox (10, 100);
  blok1.setPosition (300, 344);
  blok1.setFill (10, 150, 250);
  world.add(blok1);

  blok2 = new FBox (10, 100);
  blok2.setPosition (380, 344);
  blok2.setFill (10, 150, 250);
  world.add(blok2);

  blok3 = new FBox (100, 10);
  blok3.setPosition (340, 294);
  blok3.setFill (10, 150, 250);
  world.add(blok3);

  blok4 = new FBox (50, 50);
  blok4.setPosition (340, 260);
  blok4.setFill (10, 250, 150);
  world.add(blok4);

  blok5 = new FBox (50, 50);
  blok5.setPosition (340, 369);
  blok5.setFill (10, 250, 250);
  world.add(blok5);

  f = createFont("Georgia", 24);
  textFont(f);
}

void draw() {
  background (255);

  if (win) {
    fill (190, 0, 0);
    text ("you win!", width/2, height/2);
  }
  world.draw();
  world.step();
}

void mousePressed() {
  b = new FCircle(40);
  b.setPosition(0, random(200));
  b.setVelocity(mouseX, 0);
  b.setRestitution(0.7);
  b.setDamping(0.01);
  b.setNoStroke();
  b.setFill(200, 30, 90);
  world.add(b);
}

void contactEnded(FContact c) {
  FBody box = null;
  FBody box2 = null;
  if (c.contains (blok4, b)) {
    box = blok4;
  }
  if (c.contains (blok5, b)) {
    box2 = blok5;
    win = true;
  }
  world.remove (box);
  world.remove (box2);
}

