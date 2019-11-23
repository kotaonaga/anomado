import cc.arduino.*;
import org.firmata.*;
import processing.serial.*;
import generativedesign.*;

int mode = 1;
PImage photoCopyImg;
PImage photoSort;

color[] colors;
Arduino a;

void setup() {
  //開発用
  size(500, 800);
  surface.setLocation(displayWidth - 500, 0);

  //実機確認
  //size(1200, 1920);
  //surface.setLocation(- 1200,- 1920);

  //a = new Arduino(this, "/dev/cu.usbserial-143140", 57600);
  noStroke();


  photoCopyImg = loadImage("spring_sky.jpg");
  photoSort = loadImage("winter_streets.jpg");
  image(photoCopyImg, 0, 0, 500, 800);
}

void draw() {
  if (mode == 1) {
    photoCopy();
  } else if (mode == 2) {
    photoSort();
  } else if (mode == 3) {
    fall1();
  } else if (mode == 4) {
    winter1();
  } else {
  }
  println(mode);
}

void keyPressed() {
  if (key == '1') mode = 1;
  if (key == '2') mode = 2;
  if (key == '3') mode = 3;
  if (key == '4') mode = 4;
  if (key == 'h') sortMode = GenerativeDesign.HUE;
  if (key == 's') sortMode = GenerativeDesign.SATURATION;
  if (key == 'b') sortMode = GenerativeDesign.BRIGHTNESS;
  if (key == 'g') sortMode = GenerativeDesign.GRAYSCALE;
}
