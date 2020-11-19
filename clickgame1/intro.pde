void intro() {
  background (250, 103, 226);
  fill (255, 232, 252);
  tactile(400, 400, 60);
  strokeWeight(3);
  rect (400, 400, 200, 100);
  fill (255, 232, 252);
  tactile (400, 600, 60);
  rect (400, 600, 200, 100);
  fill(0);
  textSize(20);
  text ("START GAME", 400, 400);
  text ("OPTIONS", 400, 600);
  textSize(65);
  fill (43, 224, 83);
  text ("CLICKER GAME", 400, 200);
  
 if (mouseX>400 && mouseY<400 && mouseX<200 && mouseY>100) {
   strokeWeight(10);
   stroke(255);
 }
  
}

void introClicks() {
  if (dist(mouseX, mouseY, 400, 400) < 60) {
    mode = GAME;
  }
  if (dist(mouseX, mouseY, 400, 600) < 60) {
    mode = OPTIONS;
  }
}
