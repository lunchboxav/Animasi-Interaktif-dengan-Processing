Bola bola;

void setup() {
  bola = new Bola();
}

void draw() {
  background (255);
  bola.display();
}

void mouseReleased() {
  bola.mouseReleased();
}

void mousePressed() {
  bola.mousePressed();
}
