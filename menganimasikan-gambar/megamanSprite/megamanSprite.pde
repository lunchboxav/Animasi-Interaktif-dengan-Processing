PImage[] megaman = new PImage [4];
int index = 0;

void setup() {
  size (400, 400);
  for (int i=0; i<4; i++) {
    megaman[i] = loadImage ("megaman"+"_"+(i+1)+".png");
  }
  imageMode (CENTER);
}

void draw() {
  if (frameCount%5 == 0) {
    background (255);
    image (megaman[index%megaman.length], width/2, height/2);
    index++;
  }
}
