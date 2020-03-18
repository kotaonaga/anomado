import cc.arduino.*;
import org.firmata.*;
import processing.serial.*;
import generativedesign.*;


int mode = 1;
PImage photoCopyImg;
PImage photoSort;
boolean needRefresh = false; //シーンが切り替わるたびにリフレッシュする。
color[] colors;
Serial port;
float rectWidth, rectHeight;

void setup() {
  //開発用
  size(1200, 1920);
  //surface.setLocation(displayWidth - 500, 0);

  //実機確認
  //size(1200, 1920);
  //surface.setLocation(- 1200,- 1920);
  
  //colorMode(HSB, 360, 100, 100, 100);
  port = new Serial(this, Serial.list()[1], 9600);
  noStroke();


  //photoCopyImg = loadImage("spring_sky.jpg");
  //photoSort = loadImage("winter_streets.jpg");
  //image(photoCopyImg, 0, 0, 500, 800);
}

void draw() {
  //if (needRefresh) {
  //  background(255);
  //  needRefresh = false;
  //  println("リフレッシュしたよ");
  //}

  while (port.available() > 0) {
    mode = port.read();
    //println(mode);
  }
  //spring1();
  if (mode == 1) spring1();
  if (mode == 2) summer1();
  if (mode == 3) fall1();
  if (mode == 4) winter1();
  if (mode == 5) wait1();
  if (mode == 6) spring2();
  if (mode == 7) summer2();
  if (mode == 8) fall2();
  if (mode == 9) winter2();
  if (mode == 10) wait2();
  //if (mode == 11) glitch();
  
  println(mode);
}

void keyPressed() {
  if (key == '1') mode = 1; 
  if (key == '2') mode = 2;
  if (key == '3') mode = 3;
  if (key == '4') mode = 4;
  if (key == '5') mode = 5;
  if (key == '6') mode = 6;
  if (key == '7') mode = 7;
  if (key == '8') mode = 8;
  if (key == '9') mode = 9;
  if (key == '0') mode = 10;
  if (key == 'a') mode = 11;
  //if (key == 'h') sortMode = GenerativeDesign.HUE;
  //if (key == 's') sortMode = GenerativeDesign.SATURATION;
  //if (key == 'b') sortMode = GenerativeDesign.BRIGHTNESS;
  //if (key == 'g') sortMode = GenerativeDesign.GRAYSCALE;

  //if (keyCode == UP) falloff += 0.05;
  //if (keyCode == DOWN) falloff -= 0.05;
  //if (falloff > 1.0) falloff = 1.0;
  //if (falloff < 0.0) falloff = 0.0;

  //if (keyCode == LEFT) octaves--;
  //if (keyCode == RIGHT) octaves++;
  //if (octaves < 0) octaves = 0;
}
