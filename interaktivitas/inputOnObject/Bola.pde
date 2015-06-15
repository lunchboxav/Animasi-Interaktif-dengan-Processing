class Bola {
  color warna;
  Bola () {
    warna = color(30, 200, 150);
  }

  void display () {
    fill (warna);
    ellipse (50, 50, 50, 50);
  }

  void mouseReleased() {
    warna = color(0, 30, 150);
  }

  void mousePressed() {
    warna = color(0, 150, 150);
  }
}

