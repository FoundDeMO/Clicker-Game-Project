//Clickergame!
//Farzat Selo
//Oct 8th 2020

//minim setup
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer song, songgame, songend, coin, bump;

//image int
PImage it;
PImage ru;
PImage uk;
PImage fr;
PImage sp;
PImage gr;

//mode int
int mode;
final int INTRO = 0;
final int OPTION =1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

//pallette
color Black = #000000;
color White = #FFFFFF;
color Red   = #FF0000;
color Green = #00FF00;
color Yellow= #FFFF00;
color Blue  = #00FFFF;
color Pink  = #FF00FF;
color Grey  = #848484;

//float int
float sliderX;
float size;

//image int
PImage eumap;
PImage selectedFlag;

//target variables
float x, y, r, d;
float vx, vy;
int score, lives, highscore;


//ints

void setup () {

  size(1000, 600);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  imageMode(CENTER);
  sliderX = 200;


  //songs
  minim = new Minim(this);
  song = minim.loadFile("jeopardy.mp3");
  songgame = minim.loadFile("ingame.mp3");
  songend = minim.loadFile("gameover.mp3");
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");

  highscore = 0;

  reset();

  mode = INTRO;

  //target initialization
  x = width/2;
  y = height/2;
  r = 100;
  d = 100;
  score = 0;
  lives = 4;
  vx = random(-5, 5);
  vy = random(-5, 5);

  //options menu

  selectedFlag = ru;

  //background
  eumap = loadImage("eumap.png");

  //images
  it = loadImage("it.png");
  fr = loadImage("fr.png");
  gr = loadImage("gr.png");
  ru = loadImage("ru.png");
  sp = loadImage("sp.png");
  uk = loadImage("uk.png");

  selectedFlag = ru;
} //setup end=================

void draw() {

  if (mode == INTRO) {
    intro();
  } else if (mode == OPTION) {
    option();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
} //draw end=================

void tactileRect (int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    stroke(White);
  } else {
    stroke(Black);
  }
} //tactileRect end=================

void controlSlider() {
  if (mouseX > 200 && mouseX < 800 && mouseY > 25 && mouseY < 85) {
    sliderX = mouseX;
  }
} //controlSlider end===============
