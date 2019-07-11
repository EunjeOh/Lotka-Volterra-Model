void mouseReleased() {
  if (mode == 1) {
    if (a_first_time) {
      a_first_time = false;
      aniOn = false;
    } 
    else {
      if (956<mouseX && mouseX<1920 && 0<mouseY && mouseY<1003) {
        aniOn = true;
        newAni = true;
        animal = new AnimalPhase(xtoPrey(mouseX), ytoPredator(mouseY));
      }
      else if ((a!=a0)||(b!=b0)||(c!=c0)||(d!=d0)) {
        image(two, 0, 0);
        plotPhaseField();
      }
    }
  }
}
