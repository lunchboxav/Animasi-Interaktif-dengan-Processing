PImage spritesheetMegaman;
int DIMH = 5;
int DIMW = 1;
PImage[] sprites = new PImage[DIMW*DIMH];

int index;
int time = 10; 

void setup() {
  size(300, 300);
  imageMode(CENTER);
  spritesheetMegaman = loadImage ("megaman-move.png");
  int W = spritesheetMegaman.width/DIMW;
  int H = spritesheetMegaman.height/DIMH;
  for (int i=0; i<sprites.length; i++) {
    int x = i%DIMW*W;
    int y = i/DIMW*H;
    sprites[i] = spritesheetMegaman.get(x, y, W, H);
  }
}

void draw() {
  background (255);
  if (frameCount % time == 0) {
    index ++;
  }
  image(sprites[index%sprites.length], mouseX, mouseY);
}
