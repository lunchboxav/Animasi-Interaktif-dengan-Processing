import processing.video.*;

Capture cam;
Movie video;

void setup() {
  size (720, 288);
  cam = new Capture (this, 720, 576);
  cam.start();

  // silakan ganti file video dengan yang Anda miliki
  video = new Movie (this, "/Users/kotakmakan/Movies/Godzilla (2014)/Godzilla.2014.720p.BluRay.x264.YIFY.mp4");
  video.loop();
}

void movieEvent(Movie m) {
  m.read();
}

void draw() {
  background (255);
  if (cam.available() == true) {
    cam.read();
  }

  image (video, 0, 0, 360, 288);

  //tint (255, 50);
  image (cam, 360, 0, 360, 288);
}

