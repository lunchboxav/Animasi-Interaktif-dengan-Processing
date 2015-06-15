class circularAnimation {
  float xPos, yPos, dia;
  float angle;
  int range;
  float centerX, centerY;
  
  circularAnimation(int centerX_, int centerY_, int dia_, int range_) {
    centerX = centerX_;
    centerY = centerY_;
    dia = dia_;
    range = range_;
  }
  
  void play() {
    display();
    moveCircular();
  }
  
  void display() {
    fill (0, 200, 100);
    xPos = centerX+cos(radians(angle))*range;
    yPos = centerY+sin(radians(angle))*range;
    ellipse (xPos, yPos, dia, dia);
  }
  
  void moveCircular() {
    angle++;
  }
}
