import controlP5.*;
ControlP5 cp5;

PImage main, about, two, three;
int mode = 0;
float time_interval = 0.75;
float a=0.01, b=0.005, c=0.01, d=0.01;
float A1=0.01, B1=0.01, C1=0.01, D1=0.01, E1=0.01, F1=0.01, G1=0.01;
float A2=0.01, B2=0.01, C2=0.01, D2=0.01, E2=0.01, F2=0.01, G2=0.01;

void setup() {
  fullScreen();
  main = loadImage("main.png");
  main.resize(width, height);
  two = loadImage("two.png");
  three = loadImage("three.png");
  about = loadImage("about.png");
}

void draw() {
  if (mode == 0) {
    a_first_time = true;
    time = 0;
    image(main, 0, 0);
    fill(color(255, 255, 255));
    stroke(color(0, 0, 0));
    strokeWeight(3);
    cp5 = new ControlP5(this);

    if (1272 < mouseX && mouseX < 1787 && 402 < mouseY && mouseY < 458) {
      triangle(1209, 402, 1209, 458, 1257, 430);
      if (mousePressed) {
        mode = 1;
        image(two, 0, 0);
        plotPhaseField();

        noStroke();
        cp5.addSlider("a")
          .setPosition(503, 162)
          .setSize(174, 20)
          .setRange(0, 0.03);
        cp5.addSlider("b")
          .setPosition(503, 204)
          .setSize(174, 20)
          .setRange(0.005, 0.01);
        cp5.addSlider("c")
          .setPosition(503, 246)
          .setSize(174, 20)
          .setRange(0, 0.03);
        cp5.addSlider("d")
          .setPosition(503, 290)
          .setSize(174, 20)
          .setRange(0, 0.03);
      }
    }
    if (1227 < mouseX && mouseX < 1787 && 494 < mouseY && mouseY < 546) {
      triangle(1164, 492, 1164, 548, 1212, 520);
      if (mousePressed) {
        mode = 2;
        image(three, 0, 0);
        bottom1 = 1.5;
        mid1 = 1.5;
        top1 = 1.5;
        bottom2 = 1.5;
        mid2 = 1.5;
        top2 = 1.5;
        
        noStroke();
        cp5.addSlider("time_interval")
          .setPosition(635, 585)
          .setSize(145, 20)
          .setRange(0.25, 1);
        cp5.addSlider("A1")
          .setPosition(438, 204)
          .setSize(145, 20)
          .setRange(0, 0.03);
        cp5.addSlider("B1")
          .setPosition(438, 247)
          .setSize(145, 20)
          .setRange(0, 0.03);
        cp5.addSlider("C1")
          .setPosition(438, 289)
          .setSize(145, 20)
          .setRange(0, 0.03);
        cp5.addSlider("D1")
          .setPosition(438, 332)
          .setSize(145, 20)
          .setRange(0, 0.03);
        cp5.addSlider("E1")
          .setPosition(438, 375)
          .setSize(145, 20)
          .setRange(0, 0.03);
        cp5.addSlider("F1")
          .setPosition(438, 417)
          .setSize(145, 20)
          .setRange(0, 0.03);
        cp5.addSlider("G1")
          .setPosition(438, 460)
          .setSize(145, 20)
          .setRange(0, 0.03);

        cp5.addSlider("A2")
          .setPosition(635, 204)
          .setSize(145, 20)
          .setRange(0, 0.03);
        cp5.addSlider("B2")
          .setPosition(635, 247)
          .setSize(145, 20)
          .setRange(0, 0.03);
        cp5.addSlider("C2")
          .setPosition(635, 289)
          .setSize(145, 20)
          .setRange(0, 0.03);
        cp5.addSlider("D2")
          .setPosition(635, 332)
          .setSize(145, 20)
          .setRange(0, 0.03);
        cp5.addSlider("E2")
          .setPosition(635, 375)
          .setSize(145, 20)
          .setRange(0, 0.03);
        cp5.addSlider("F2")
          .setPosition(635, 417)
          .setSize(145, 20)
          .setRange(0, 0.03);
        cp5.addSlider("G2")
          .setPosition(635, 460)
          .setSize(145, 20)
          .setRange(0, 0.03);
      }
    }
    if (1639 < mouseX && mouseX < 1793 && 580 < mouseY && mouseY < 626) {
      triangle(1576, 575, 1576, 631, 1620, 603);
      if (mousePressed) mode = 3;
    }
  }
  if (mode == 1) {
    two_main();
    if (712.5<mouseX && mouseX<860.5 && 32.5<mouseY && mouseY<88.5) {
      fill(color(60, 60, 60));
      if (mousePressed) {
        mode = 0;
        aniOn = false;
        newAni = false;
        cp5.remove("a");
        cp5.remove("b");
        cp5.remove("c");
        cp5.remove("d");
      }
    } else fill(color(0, 0, 0));
    stroke(color(255, 255, 255));
    strokeWeight(3);
    rect(712.5, 41.5, 148, 56);
    fill(color(255, 255, 255));
    textSize(25);
    textAlign(CENTER, CENTER);
    text("Go back", 787, 68);
  }
  if (mode == 2) {
    three_main();
    if (712.5<mouseX && mouseX<860.5 && 32.5<mouseY && mouseY<88.5) {
      fill(color(60, 60, 60));
      if (mousePressed) {
        mode = 0;
        cp5.remove("time_interval");
        cp5. remove("A1");
        cp5. remove("B1");
        cp5. remove("C1");
        cp5. remove("D1");
        cp5. remove("E1");
        cp5. remove("F1");
        cp5. remove("G1");

        cp5. remove("A2");
        cp5. remove("B2");
        cp5. remove("C2");
        cp5. remove("D2");
        cp5. remove("E2");
        cp5. remove("F2");
        cp5. remove("G2");
      }
    } else fill(color(0, 0, 0));
    stroke(color(255, 255, 255));
    strokeWeight(3);
    rect(690, 28, 148, 56);
    fill(color(255, 255, 255));
    textSize(25);
    textAlign(CENTER, CENTER);
    text("Go back", 764, 53);
  }
  if (mode == 3) {
    image(about, 0, 0);
    if (1730<mouseX&&mouseX<1878&&40<mouseY&&mouseY<96) {
      fill(color(60, 60, 60)); 
      if (mousePressed) {
        mode = 0;
      }
    } else fill(color(0, 0, 0));
    stroke(color(255, 255, 255));
    strokeWeight(3);
    rect(1730, 40, 148, 56);
    fill(color(255, 255, 255));
    textSize(25);
    textAlign(CENTER, CENTER);
    text("Go back", 1804, 68);
  }
}
