class forwardAnimation {
  int xPos, yPos, dia;

  forwardAnimation(int xPos_, int yPos_, int dia_) {
    xPos = xPos_;
    yPos = yPos_;
    dia = dia_;
  }

  void play() {
    display();
    moveForward();
  }

  void display() {
    fill (0, 200, 100);
    ellipse (xPos, yPos, dia, dia);
  }

  void moveForward() {
    xPos++;
  }
}

