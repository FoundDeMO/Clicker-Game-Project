void gameover () {
  background(#ff0000);
  textSize(100);
  text("GAME OVER", width/2, height/2);
  textSize(60);
  text("HIGHSCORE: " + highscore, width/2, height/3);
}

void gameoverClicks() {

  reset();
  mode = INTRO;
  songend.close();
}
