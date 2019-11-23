import cc.arduino.*;
import org.firmata.*;
import processing.serial.*;
import generativedesign.*;

int mode = 1;
PImage photoCopyImg;
PImage photoSort;
boolean needRefresh = false; //シーンが切り替わるたびにリフレッシュする。
color[] colors;
Arduino a;

void setup() {
  //開発用
  size(500, 800);
  surface.setLocation(displayWidth - 500, 0);
  
  for(int i = 0; i < agents.length; i++){
    agents[i] = new Agent();
  }
  //実機確認
  //size(1200, 1920);
  //surface.setLocation(- 1200,- 1920);

  //a = new Arduino(this, "/dev/cu.usbserial-143140", 57600);
  noStroke();


  photoCopyImg = loadImage("spring_sky.jpg");
  photoSort = loadImage("winter_streets.jpg");
  //image(photoCopyImg, 0, 0, 500, 800);
}

void draw() {
  //前のモードと今のモードが変わった瞬間だけbackground(255);を一回かける。
  //rainDensity()がめちゃ思いっぽい。多分ピクセルをやっているから。
  
  //Refreshの時、長方形の透明度を徐々にあげていけばイージングみたいにできるかも!
  
  if(needRefresh){
    background(255);
    needRefresh = false;
    println("リフレッシュしたよ");
  }
  
  //if (mode == 1) rainDensity();
  if (mode == 2) rainFrequency();
  if (mode == 3) rainLocation();
  if (mode == 4) rainStrength();
  if (mode == 5) rainTemperature();
  if (mode == 6) rainTime();
  // if (mode == 7) rain();
  // if (mode == 8) rain();
  
  //if (mode == 1) {
  //  photoCopy();
  //} else if (mode == 2) {
  //  photoSort();
  //} else if (mode == 3) {
  //  fall1();
  //} else if (mode == 4) {
  //  winter1();
  //} else {
  //}
  println(mode);
}

void keyPressed() {
  if (key == '1') mode = 1; needRefresh = true;
  if (key == '2') mode = 2; needRefresh = true;
  if (key == '3') mode = 3;
  if (key == '4') mode = 4;
  if (key == '5') mode = 5;
  if (key == '6') mode = 6;
  if (key == '7') mode = 7;
  if (key == 'h') sortMode = GenerativeDesign.HUE;
  if (key == 's') sortMode = GenerativeDesign.SATURATION;
  if (key == 'b') sortMode = GenerativeDesign.BRIGHTNESS;
  if (key == 'g') sortMode = GenerativeDesign.GRAYSCALE;
  
  if (keyCode == UP) falloff += 0.05;
  if (keyCode == DOWN) falloff -= 0.05;
  if (falloff > 1.0) falloff = 1.0;
  if (falloff < 0.0) falloff = 0.0;

  if (keyCode == LEFT) octaves--;
  if (keyCode == RIGHT) octaves++;
  if (octaves < 0) octaves = 0;
}
