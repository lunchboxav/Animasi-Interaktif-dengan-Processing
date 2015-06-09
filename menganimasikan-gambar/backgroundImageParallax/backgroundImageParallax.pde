// Tree Image obtained from http://opengameart.org/content/tree-with-roots

PImage imageTree;
int[] randomNum = new int[20];

int xPos;

float bgPar1, bgPar2, bgPar3;

void setup() {
  size(600, 400);

  imageTree = loadImage("tree.png");
  colorMode (HSB);
  generateRandomNum();
}

void draw() {
  fill(140, 150, 190);
  rect (0, 0, width, height);

  pushMatrix();
  translate(bgPar1,0);
  drawGround(350, 10, 50);
  tint (70);
  drawTree(180, 80, 90);
  popMatrix();

  pushMatrix();
  translate(bgPar2,0);
  drawGround(370, 10, 70);
  tint (120);
  drawTree(180, 100, 110);
  popMatrix();

  pushMatrix();
  translate(bgPar3,0);
  drawGround(400, 20, 120);
  tint (200);
  drawTree(200, 120, 133);
  popMatrix();

  fill (120, 200, 200);
  ellipse (xPos, 380, 20, 20);
  xPos+=1;
  
  bgPar1 -= 0.1;
  bgPar2 -= 1.0;
  bgPar3 -= 2.0;
}

void generateRandomNum() {
  for (int i = 0; i < randomNum.length; i++) {
    randomNum[i] = int(random (100));
  }
}

void drawGround(int endPoint, int grassHeight, int bright) {
  for (int i = 0; i < width*5; i++) {
    stroke (70, 310, bright);
    line (i, endPoint, i, endPoint-100+int(random(grassHeight)));
  }
}

void drawTree(int ypos, int treeWidth, int treeHeight) {
  for (int i = 0; i < 20; i++) {
    image (imageTree, i*140+randomNum[i], ypos, treeWidth, treeHeight);
  }
}

