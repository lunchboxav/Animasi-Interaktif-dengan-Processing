// Tree Image obtained from http://opengameart.org/content/tree-with-roots

PImage imageTree;
int[] randomNum = new int[4];

PGraphics bg;
int xPos;

void setup() {
  size(600, 400);
  
  imageTree = loadImage("tree.png");
  bg = createGraphics (width, height);
  bg.beginDraw();
  bg.colorMode (HSB);
  bg.fill(140, 150, 190);
  bg.rect (0, 0, width, height);

  drawGround(bg, 350, 10, 50);
  bg.tint (70);
  drawTree(bg, 180, 80, 90);

  drawGround(bg,370, 10, 70);
  bg.tint (120);
  drawTree(bg,180, 100, 110);

  drawGround(bg,400, 20, 120);
  bg.tint (200);
  drawTree(bg,200, 120, 133);
  bg.endDraw();
}

void draw() {
  image (bg, 0, 0);
  fill (120, 200, 200);
  ellipse (xPos, 380, 20, 20);
  xPos++;
}

void generateRandomNum() {
  for (int i = 0; i < randomNum.length; i++) {
    randomNum[i] = int(random (100));
  }
}

void drawGround(PGraphics p,int endPoint, int grassHeight, int bright) {
  for (int i = 0; i < width; i++) {
    p.stroke (70, 310, bright);
    p.line (i, endPoint, i, endPoint-100+int(random(grassHeight)));
  }
}

void drawTree(PGraphics p, int ypos, int treeWidth, int treeHeight) {
  generateRandomNum();
  for (int i = 0; i < 4; i++) {
    p.image (imageTree, i*140+randomNum[i], ypos, treeWidth, treeHeight);
  }
}

