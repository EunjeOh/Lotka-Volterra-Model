// Solve the following ODE
// dr/dt = r(a-bw)
// dw/dt = w(-c+dr)
// I made 10pixel down

float prey, predator;
float a0=0.01, b0=0.005, c0=0.01, d0=0.012;
boolean a_first_time, aniOn=false, newAni;
AnimalPhase animal;
int a_xgap = 300, a_ygap = 180;
float time = 0;

void two_main() {
  if (aniOn) {
    if ((a!=a0)||(b!=b0)||(c!=c0)||(d!=d0)) {
      image(two, 0, 0);
      plotPhaseField();
      time = 0;
    }
    plotAnimal();
    if (newAni) {
      image(two, 0, 0);
      plotPhaseField();
      time = 0;
      newAni = false;
    }
    plotPreyGraph();
    plotPredatorGraph();
    time += 1;
  }
}

void plotPreyGraph() {
  noStroke();
  fill(#ff568e);  // pink
  if (time<820) {
    ellipse(68+time, 1003-animal.prey*82, 2, 2);
  } else newAni = true;
}

void plotPredatorGraph() {
  noStroke();
  fill(#4286f4);  // blue
  if (time<820) {
    ellipse(68+time, 1003-animal.predator*82, 2, 2);
  }
}

void plotPhaseField() {
  for (int i=1; i<=40; i++) {
    for (int j=1; j<=40; j++) {
      float curX = 933+i*50;
      float curY = 1009-j*30;
      prey = xtoPrey(curX);
      predator = ytoPredator(curY);
      float dR = prey*(a-b*predator);
      float dW = -predator*(-c+d*prey);
      float vecX = dR*a_xgap;
      float vecY = dW*a_ygap;
      float size = sqrt(vecX*vecX+vecY*vecY)/20;
      colorMode(HSB, 100);
      stroke(map(size, 0, 0.5, 70, 0), 100, 100);
      strokeWeight(2);
      fill(map(size, 0, 0.5, 70, 0), 100, 100);
      drawArrow(curX, curY, curX+vecX/size, curY+vecY/size, 0, 5, true);
      colorMode(RGB);
    }
  }
}

void plotAnimal() {
  animal.plot();
  animal.prey += 2*animal.prey*(a-b*animal.predator);
  animal.predator += 2*animal.predator*(-c+d*animal.prey);
  a0 = a;
  b0 = b;
  c0 = c;
  d0 = d;
}

float xtoPrey(float x) {
  return (x-956)/a_xgap;
}

float ytoPredator(float y) {
  return -((y-1003)/a_ygap);
}
