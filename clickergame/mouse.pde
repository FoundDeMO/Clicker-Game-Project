void mouseReleased() {

  controlSlider();

  if (mode == INTRO) {
    introClicks();
  }
  if (mode == OPTION) {
    optionClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  } else {
    println("Error: Mode = " + mode);
  }
}




void mouseDragged() {
  controlSlider();
}
