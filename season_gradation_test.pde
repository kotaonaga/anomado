import cc.arduino.*;
import processing.serial.*;

color lerp;
color lerp2;
float amp;
int mode = 1;
Serial myPort;
float sensors = 2;

void setup() {
  size(500, 800);
  surface.setLocation(displayWidth - 500, 0);
  noStroke();
}

void draw() {
  if (sensors < 11) {
    spring1();
    spring2();
    //save("/Users/kota/Documents/Processing/season_gradation/spring.png");
  } else if (sensors > 10 && sensors < 20) {
    summer1();
    summer2();
    //save("/Users/kota/Documents/Processing/season_gradation/summer.png");
  } else if (sensors > 20 && sensors < 30) {
    fall1();
    fall2();
    //save("/Users/kota/Documents/Processing/season_gradation/fall.png");
  } else if (sensors > 30 && sensors < 40) {
    winter1();
    winter2();
    //save("/Users/kota/Documents/Processing/season_gradation/winter.png");
  }else {
    //winter1();
    //winter2();
  }
  println(sensors);
}


void noiseSpring() {
  for (int i = 0; i < width; i++) {
    fill(0, 0, i);
    //spring1 = color(noise(random(10)) * 100, 233,45);
    amp = map(i, 0, width, 0, 1);
    lerp = lerpColor(spring1, spring2, amp);
    fill(lerp);
    rect(i, 0, 10, height);
    //rect(i, random(height), noise(random(10)) * 10, random(height));
  }
}

void spring1() {
  for (int i = 0; i < width; i++) {
    fill(0, 0, i);
    amp = map(i, 0, width, 0, 1);
    lerp = lerpColor(spring1, spring2, amp);
    fill(lerp);
    rect(i, 0, 10, height);
  }
}

void spring2() {
  for (int i = 0; i < height; i++) {
    amp = map(i, 0, height, 0, 1);
    lerp2 = lerpColor(spring3, spring4, amp);
    fill(lerp2, 10);
    rect(0, i, width, 10);
  }
}

void summer1() {
  for (int i = 0; i < width; i++) {
    fill(0, 0, i);
    amp = map(i, 0, width, 0, 1);
    lerp = lerpColor(summer1, summer2, amp);
    fill(lerp);
    rect(i, 0, 10, height);
  }
}

void summer2() {
  for (int i = 0; i < height; i++) {
    amp = map(i, 0, height, 0, 1);
    lerp2 = lerpColor(summer4, summer3, amp);
    fill(lerp2, 10);
    rect(0, i, width, 10);
  }
}

void fall1() {
  for (int i = 0; i < width; i++) {
    fill(0, 0, i);
    amp = map(i, 0, width, 0, 1);
    lerp = lerpColor(fall1, fall2, amp);
    fill(lerp);
    rect(i, 0, 10, height);
  }
}

void fall2() {
  for (int i = 0; i < height; i++) {
    amp = map(i, 0, height, 0, 1);
    lerp2 = lerpColor(fall3, fall4, amp);
    fill(lerp2, 30);
    rect(0, i, width, 10);
  }
}

void winter1() {
  for (int i = 0; i < width; i++) {
    fill(0, 0, i);
    amp = map(i, 0, width, 0, 1);
    lerp = lerpColor(winter1, winter2, amp);
    fill(lerp);
    rect(i, 0, 10, height);
  }
}

void winter2() {
  for (int i = 0; i < height; i++) {
    amp = map(i, 0, height, 0, 1);
    lerp2 = lerpColor(winter3, winter4, amp);
    fill(lerp2, 20);
    rect(0, i, width, 10);
  }
}

void keyPressed() {
  if (key == '1') {
    mode = 1;
  } else if (key == '2') {
    mode = 2;
  } else if (key == '3') {
    mode = 3;
  } else if (key == '4') {
    mode = 4;
  }
}


void serialEvent(Serial myPort) {
  // シリアルバッファーを読込み
  String myString = myPort.readStringUntil('\n');
  // 読み込んだ文字列を 小数(数字）に変換して、関数に代入
  sensors = float(myString);
  //println(sensors);
}
