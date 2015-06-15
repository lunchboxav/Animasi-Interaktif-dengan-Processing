class rotatingRect {

  float xPos, yPos, size;
  float angle;
  int speed;
  float centerX, centerY;

  rotatingRect(int centerX_, int centerY_, int size_, int speed_) {
    centerX = centerX_;
    centerY = centerY_;
    size = size_;
    speed = speed_;
  }

  void play() {
    display();
    rotateRect();
  }

  void display() {
    pushMatrix();
    translate (centerX, centerY);
    rotate(radians(angle));
    rotate(PI/3.0);
    fill (0, 200, 100);
    rect (-centerX/25, -centerY/25, size, size);
    popMatrix();
  }

  void rotateRect() {
    angle += speed;
  }
}

