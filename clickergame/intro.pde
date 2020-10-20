void intro () {
  background(eumap);
  //START Button
  strokeWeight(2);
  stroke(Black);
  fill(White);
  tactileRect(400, 350, 200, 100);
  rect(500, 400, 200, 100);
  fill(Black);
  textSize(43);
  text("START", 500, 395);
  //OPTIONS BUTTON
  strokeWeight(2);
  stroke(Black);
  fill(White);
  tactileRect(425, 470, 150, 80);
  rect(500, 510, 150, 75);
  fill(Black);
  textSize(25);
  text("OPTIONS", 500, 507);
  //'EUROPE CLICKER'
  textSize(100);
  text("EUROPE CLICKER", 500, 150);
  fill(White);
  text("EUROPE CLICKER", 500, 145);
}//intro end===================

void introClicks() {
  if (mouseX > 400 && mouseX < 600 && mouseY > 350 && mouseY < 450) {
    mode = GAME;
  }
  if (mouseX > 425 && mouseX < 575 && mouseY > 460 && mouseY < 560) {
    mode = OPTION;
    song.play();
  }
}
