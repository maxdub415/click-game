//Max Waldmeier
//1-2b

//MODE VARIABLES
int mode;
final int    INTRO = 0;
final int     GAME = 1;
final int    PAUSE = 2;
final int GAMEOVER = 3;
final int  OPTIONS = 4;

//TARGET VARIABLES
float x, y, d; //target properties
float vx, vy; //target velocity
int score, lives, highscore;


//pallete
color lime  = #03FF0C;
color white = #FFFFFF;
color black = #000000;
color red   = #FF0000;




void setup () { 
  size (800, 800);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  mode = INTRO;
  
  //target initialization
  x = width/2;
  y = width/2;
  d = 160;
  vx = random (-5,5);
  vy = random (-5,5);
  
  //game initialization
  score     = 0;
  lives     = 3;
  highscore = 0;
  
  
  
  reset();
  
}


void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } if (mode == PAUSE) {
    pausescreen();
  } if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTIONS) {
    options();
  } else {
    println("Mode Error: Mode is " + mode);
  }
}

//tactile
  void tactile (int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) {
    stroke (white);
  } else {
    stroke (50);
  }
  }
    
  
  
