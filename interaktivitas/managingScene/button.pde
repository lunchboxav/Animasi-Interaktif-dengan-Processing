// membuat button berbentuk lingkaran

class Button {
  
  int xPos;
  int yPos;
  int size;
  
  // size adalah jari-jari lingkaran
  Button(int xPos_, int yPos_, int size_) {
    xPos = xPos_;
    yPos = yPos_;
    size = size_;
  }
  
  void display() {
    ellipse (xPos, yPos, size*2, size*2);
  }
  
  int getXPos() {
    return xPos;
  }
  
  int getYPos() {
    return yPos;
  }
  
  int getSize() {
    return size;
  }

  // mengecek apakah mouse ada di atas button
  boolean isHovered() {
    if (mouseX>xPos-size && mouseX<xPos+size && mouseY>yPos-size && mouseY<yPos+size) {
      return true;
    } else {
      return false;
    }
  }
}
