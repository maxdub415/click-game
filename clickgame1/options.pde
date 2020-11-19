void options() {
  //title for options
  background(82);
  fill(255);
  textSize(75);
  text("pick your poison", 375, 150);
  
  //buttons
  stroke(255, 3, 3);
  strokeWeight (3);
  tactile (200, 400, 80);
  rect (200, 400, 200, 200);
  tactile (600, 400, 80);
  rect (600, 400, 200, 200);
  tactile (600, 600, 60);
  rect (600, 600, 200, 100);
  
  //ball #1
  fill (7, 46, 232);
  stroke(0);
  circle(200, 400, 120);
  fill (10, 193, 17);
  circle (200, 400, 60);
  
  
  //ball #2
  fill(252, 154, 25);
  stroke(0);
  circle (600, 400, 120);
  fill(252, 8, 167);
  circle (600, 400, 60);
  
  
  fill(0);
  textSize (50);
  text ("BACK", 600, 595);
  
  if (mouseX>600 && mouseY<600 && mouseX<200 && mouseY>100) {
   strokeWeight(0);
 }
}

void optionClicks() {
  if (dist(mouseX, mouseY, 600, 600) < 60) {
    mode = INTRO;
  }
  
  if (dist(mouseX, mouseY, 200, 400) < 80) {
     
  }
}
