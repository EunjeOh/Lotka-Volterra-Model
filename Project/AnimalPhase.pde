class AnimalPhase {
  float prey, predator;
  AnimalPhase(float _prey, float _predator) {
    prey = _prey;
    predator = _predator;
  }
  void plot() {
    fill(color(255, 255, 255));
    noStroke();
    ellipse(956+prey*a_xgap, 1003-predator*a_ygap, 4, 4);
  }
}
