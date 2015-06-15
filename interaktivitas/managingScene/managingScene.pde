// Demo mengganti scene (adegan)
// Scene diganti dengan salah satu dari 2 cara: klik object button atau menekan keyboard

// ketiga scene dibuat sebagai objek
forwardAnimation ballForward;
circularAnimation ballCircular;
rotatingRect rectRotate;

// menunjukkan scene mana yang akan ditampilkan
int sceneIndex;

// inisialisasi object button, diletakkan dalam array
Button[] button = new Button[3];

void setup() {
  size (500, 200);
  ballForward = new forwardAnimation (0, height/2, 20);
  ballCircular = new circularAnimation (width/2, height/2, 20, 50);
  rectRotate = new rotatingRect (width/2, height/2, 30, 1);
  smooth();
  noStroke();

  for (int i=0; i<3; i++) {
    button[i] = new Button ((i+1)*30, 20, 10);
  }
}

void draw() {
  background (20);
  fill(20);
  rect(0, 40, width, height-40);
  for (int i=0; i<3; i++) {
    fill (120*i, 200, 100);
    
    // menampilkan button
    button[i].display();
    
    // mengecek apakah mouse ada di atas button
    if (button[i].isHovered()) {
      // mengecek apakah mouse ditekan
      if (mousePressed) {
        // scene diganti sesuai button mana yang ditekan
        sceneIndex = i+1;
      }
    }
  }

  // mengganti scene berdasarkan sceneIndex
  // ketiga object scene memiliki fungsi play, yang akan memainkan animasi
  switch (sceneIndex) {
  case 1:
    ballForward.play();
    break;
  case 2:
    ballCircular.play();
    break;
  case 3:
    rectRotate.play();
    break;
  default:
    //background (20, 200, 30);
  }
}

void keyPressed() {
  // mengganti sceneIndex
  sceneIndex++;
}
