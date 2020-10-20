void option () {

  background(240);

  //back button
  strokeWeight(4);
  stroke(0);
  fill(255);
  circle(50, 50, 60);

  //tactile slider
  //slider (stroke)
  strokeWeight(4);
  if (mouseX > 200 && mouseX < 10+800 && mouseY > 50 && mouseY < 35+50) {
    stroke(100);
  } else {
    stroke(0);
  }
  textSize(20);
  textAlign(CENTER, CENTER);
  fill(1);
  line(200, 50, 800, 50);
  fill(White);
  circle(sliderX, 50, 50);
  d = map(sliderX, 200, 800, 100, 250);

  //indicator
  image(selectedFlag, 500, 200, d, d);
  image(uk, 100, 400, 120, 120);
  image(sp, 250, 400, 120, 120);
  image(ru, 400, 400, 120, 120);
  image(it, 600, 400, 120, 120);  
  image(fr, 750, 400, 120, 120);
  image(gr, 900, 400, 120, 120);
}

void optionClicks() {

  if (dist(50, 50, mouseX, mouseY) < 30) {
    mode = INTRO;
    song.close();
    song.rewind();
  }

  if (dist(100, 400, mouseX, mouseY) < 60) {
    selectedFlag = uk;
  }
  if (dist(250, 400, mouseX, mouseY) < 60) {
    selectedFlag = sp;
  }
  if (dist(400, 400, mouseX, mouseY) < 60) {
    selectedFlag = ru;
  }
  if (dist(600, 400, mouseX, mouseY) < 60) {
    selectedFlag = it;
  }
  if (dist(750, 400, mouseX, mouseY) < 60) {
    selectedFlag = fr;
  }
  if (dist(900, 400, mouseX, mouseY) < 60) {
    selectedFlag = gr;
  }
}
