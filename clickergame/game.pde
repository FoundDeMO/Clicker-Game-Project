void game () {
  background(240);
  textSize(20);
  fill(1);
  text("Score:" + score, width/2, 50);
  text("Lives:" + lives, width/2, 100);

  if (score > highscore) {
    highscore = score;
  }

  //pause button
  strokeWeight(4);
  stroke(0);
  fill(255);
  circle(50, 50, 60);

  //music
  songgame.play();

  //circle
  image(selectedFlag, x, y, d, d);

  //moving
  x = x + vx;
  y = y + vy;

  //bouncing
  if (x < 0 || x > width-d/2) {
    vx = vx * -1;
  }
  if (y < 0 || y > height-d/2) {
    vy = vy * -1;
  }
}

void gameClicks() {
  if (dist(mouseX, mouseY, x, y) < d/2) {
    vx = vx * 1.1;
    vy = vy * 1.1;
    score = score + 1;
    coin.rewind();
    coin.play();
  } else if (dist(mouseX, mouseY, 50, 50) < 30) {
    mode = PAUSE;
  } else {
    lives = lives - 1;
    bump.rewind();
    bump.play();
    if (lives == 0) {
      mode = GAMEOVER;
      songgame.close();
      songend.rewind();
      songend.play();
    }
  }
}
