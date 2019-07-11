// Solve the following ODE
// dv/dt = v(a-br)
// dr/dt = r(-c+dv-ew)
// dw/dt = w(-f+gr)
float time_interval0;
float bottom1=1.5, mid1=1.5, top1=1.5;
float bottom2=1.5, mid2=1.5, top2=1.5;
float A01=0.01, B01=0.01, C01=0.01, D01=0.01, E01 = 0.01, F01 = 0.01, G01 = 0.01;
float A02=0.01, B02=0.01, C02=0.01, D02=0.01, E02 = 0.01, F02 = 0.01, G02 = 0.01; 
int A_xgap = 300, A_ygap = 180, A_zgap = 150;

void three_main() {
  if ((time_interval!=time_interval0)||(A1!=A01)||(B1!=B01)||(C1!=C01)||(D1!=D01)||(E1!=E01)||(F1!=F01)||(G1!=G01)||(A2!=A02)||(B2!=B02)||(C2!=C02)||(D2!=D02)||(E2!=E02)||(F2!=F02)||(G2!=G02)) {
    image(three, 0, 0);
    time = 0;
    bottom1 = mid1 = top1 = 1.5;
    bottom2 = mid2 = top2 = 1.5;
  }
  plotbottomGraph();
  plotmidGraph();
  plottopGraph();
  time += time_interval;
  population();
}

void plotbottomGraph() {
  noStroke();
  fill(#ff568e);  // pink
  if (time<1048) {
    ellipse(873+time, 513-bottom1*100, 2, 2);
    if (1033-bottom2*100 > 550) ellipse(873+time, 1033-bottom2*100, 2, 2);
  } else {
    time = 0;
    image(three, 0, 0);
    bottom1 = mid1 = top1 = 1.5;
    bottom2 = mid2 = top2 = 1.5;
  }
}

void plotmidGraph() {
  noStroke();
  fill(#00cc66);  // green
  if (time<1048) {
    ellipse(873+time, 513-mid1*100, 2, 2);
    if (1033-mid2*100 > 550) ellipse(873+time, 1033-mid2*100, 2, 2);
  }
}

void plottopGraph() {
  noStroke();
  fill(#4286f4);  // blue 
  if (time<1048) {
    ellipse(873+time, 513-top1*100, 2, 2);
    if (1033-top2*100 > 550) ellipse(873+time, 1033-top2*100, 2, 2);
  }
}

void population() {
  time_interval0 = time_interval;
  
  bottom1 += bottom1*(A1-B1*mid1);
  mid1 += mid1*(-C1+D1*bottom1-E1*top1);
  top1 += top1*(-F1+G1*mid1);
  A01 = A1;
  B01 = B1;
  C01 = C1;
  D01 = D1;
  E01 = E1;
  F01 = F1;
  G01 = G1;

  bottom2 += bottom2*(A2-B2*mid2);
  mid2 += mid2*(-C2+D2*bottom2-E2*top2);
  top2 += top2*(-F2+G2*mid2);
  A02 = A2;
  B02 = B2;
  C02 = C2;
  D02 = D2;
  E02 = E2;
  F02 = F2;
  G02 = G2;
}
