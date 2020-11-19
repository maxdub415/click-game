void gameover() {
  background(255,0,0);
  textSize (50);
  text ("U LOST TAKE THE L", 400, 300);
  
   fill(255);
  strokeWeight(3);
  stroke(0);
  tactile (600, 700, 60);
  rect(600, 700, 200, 100);
  textSize(50);
  fill(0);
  text ("QUIT", 600, 700);
  
 if (mouseX>600 && mouseY<700 && mouseX<200 && mouseY>100) {

 }
  
  
  if (score > highscore) {
    highscore = score;
  }
  shadowText("High Score: " + highscore, 400, 500, 80);
 
}

void gameoverClicks() {
 if (dist(mouseX, mouseY, 600, 700) < 60) {
    mode = INTRO;
reset();
  }
  
}
