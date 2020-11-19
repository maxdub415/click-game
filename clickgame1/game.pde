void game() {
  background(3, 249, 255);
  
  //PAUSE BUTTON
  tactile (100, 100, 50);
  strokeWeight(3);
  fill(0);
  circle (100, 100, 100);
  fill (255);
  textSize(20);
  text ("PAUSE", 100, 100);
  
  
  //TARGET
  strokeWeight (0);
  fill (195, 55, 247);
  circle (x, y, d);
  
  //life counter
  textSize (20);
  fill(0);
  text("Lives: " + lives, 600, 700);
  
  //score counter
  text ("Score: " + score, 150, 700);
  
  //moving target
  x = x + vx;
  y = y + vy;
  
  //bouncing
  if (x < d/2 ||x > width-d/2) {
    vx = vx * -1;
  }
  if (y < d/2 || y > height-d/2) {
   vy = vy * -1; 
  }
}

void gameClicks() {
  if (dist(mouseX, mouseY, x, y) < d/2) {
    score = score + 1;
    vx = vx * 1.1;
    vy = vy * 1.1;
    
  } else if (dist(mouseX,mouseY, 100, 100) < 50) {
    mode = PAUSE;
  } else {
    background(255, 0, 0);
    lives = lives - 1;
    
    if (lives == 0) {
      mode = GAMEOVER;
      
      
    }
  }
}
