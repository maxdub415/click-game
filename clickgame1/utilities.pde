void rectButton(String text, float x, float y, float w, float h) {
  if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
    strokeWeight(10);
    stroke(255,0,0);
    fill(255);
} else {
  strokeWeight(2);
  stroke(0);
  fill(255);
}
textSize(60);
rect(x, y, w, h);
fill(0);
text(text, x,  y);
}

void shadowText(String text, float x, float y, int size) {
  textSize (size);
  fill(0);
  text(text, x-5, y+5);
  fill (255);
  text(text, x, y);
}

boolean clickedOnRect (float x, float y, float w, float h) {
  return mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2;
}

void reset() {
  //target
  x = width/2;
  y = height/2;
  d = 200;
  vx = random(-5, 5);
  vy = random(-5, 5);
  
  //game initialization
  score = 0;
  lives = 3;

}
