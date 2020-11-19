void pausescreen() {
  background (243, 222, 252);
  fill (167, 111, 224);
  tactile (400, 400, 75);
  strokeWeight(3);
  circle (400, 400, 150);
  textSize (25);
  fill(0);
  text ("RESUME", 400, 400);
  textSize(60);
  text("don't be boring resume", 400, 200);
}

void pausescreenClicks() {
  if (dist(mouseX, mouseY, 400, 400) < 75) {
   mode = GAME; 
  }
}
