import cc.arduino.*;
import org.firmata.*;
import processing.serial.*;


color lerp;
color lerp2;
float amp;
int mode = 1;

Arduino a;

void setup() {
  size(1200, 1920);
  surface.setLocation(- 1200,- 1920);
  
  //a = new Arduino(this, "/dev/cu.usbserial-143140", 57600);
  noStroke();
}

void draw() {
  if (mode == 1) {
    spring1();
    spring2();
  } else if (mode == 2) {
    summer1();
    summer2();
  } else if (mode == 3) {
    fall1();
    fall2();
  } else if (mode == 4) {
    winter1();
    winter2();
  }else {
  }
  println(mode);
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
