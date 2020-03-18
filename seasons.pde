void spring1() {
  for (float w = 0; w < width; w += 5) {
    for (float h = 0; h < height; h += 5) {
      color c = lerpColor(spring1, spring2, (w + h) / (width + height));
      fill(c);
      rect(w, h, 5, 5);
    }
  }
}

void spring2() {
  for (float w = 0; w < width; w += 5) {
    for (float h = 0; h < height; h += 5) {
      color c = lerpColor(spring3, spring4, (w + h) / (width + height));
      rectWidth = random(5, 10);
      rectHeight = random(5, 10);
      fill(c);
      rect(w, h, rectWidth, rectHeight);
    }
  }
}

void summer1() {
  for (float w = 0; w < width; w += 5) {
    for (float h = 0; h < height; h += 5) {
      color c = lerpColor(summer1, summer2, (w + h) / (width + height));
      rectWidth = random(5, 10);
      rectHeight = random(5, 10);
      fill(c);
      rect(w, h, rectWidth, rectHeight);
    }
  }
}

void summer2() {
  for (float w = 0; w < width; w += 5) {
    for (float h = 0; h < height; h += 5) {
      color c = lerpColor(summer3, summer4, (w + h) / (width + height));
      rectWidth = random(5, 10);
      rectHeight = random(5, 10);
      fill(c);
      rect(w, h, rectWidth, rectHeight);
    }
  }
}

void fall1() {
  for (float w = 0; w < width; w += 5) {
    for (float h = 0; h < height; h += 5) {
      color c = lerpColor(fall1, fall2, (w + h) / (width + height));
      rectWidth = random(5, 10);
      rectHeight = random(5, 10);
      fill(c);
      rect(w, h, rectWidth, rectHeight);
    }
  }
}

void fall2() {
  for (float w = 0; w < width; w += 5) {
    for (float h = 0; h < height; h += 5) {
      color c = lerpColor(fall3, fall4, (w + h) / (width + height));
      rectWidth = random(5, 10);
      rectHeight = random(5, 10);
      fill(c);
      rect(w, h, rectWidth, rectHeight);
    }
  }
}

void winter1() {
  for (float w = 0; w < width; w += 5) {
    for (float h = 0; h < height; h += 5) {
      color c = lerpColor(winter1, winter2, (w + h) / (width + height));
      rectWidth = random(5, 10);
      rectHeight = random(5, 10);
      fill(c);
      rect(w, h, rectWidth, rectHeight);
    }
  }
}

void winter2() {
  for (float w = 0; w < width; w += 5) {
    for (float h = 0; h < height; h += 5) {
      color c = lerpColor(winter3, winter4, (w + h) / (width + height));
      rectWidth = random(5, 10);
      rectHeight = random(5, 10);
      fill(c);
      rect(w, h, rectWidth, rectHeight);
    }
  }
}

void wait1() {
  for (float w = 0; w < width; w += 5) {
    for (float h = 0; h < height; h += 5) {
      color c = lerpColor(wait1, wait2, (w + h) / (width + height));
      rectWidth = random(5, 10);
      rectHeight = random(5, 10);
      fill(c);
      rect(w, h, rectWidth, rectHeight);
    }
  }
}

void wait2() {
  for (float w = 0; w < width; w += 5) {
    for (float h = 0; h < height; h += 5) {
      color c = lerpColor(wait3, wait4, (w + h) / (width + height));
      rectWidth = random(5, 10);
      rectHeight = random(5, 10);
      fill(c);
      rect(w, h, rectWidth, rectHeight);
    }
  }
}


//void glitch() {
//  if (setPhoto) {
//    for (float w = 0; w < width; w += 5) {
//      for (float h = 0; h < height; h += 5) {
//        color c = lerpColor(wait3, wait4, (w + h) / (width + height));
//        rectWidth = random(5, 10);
//        rectHeight = random(5, 10);
//        fill(c);
//        rect(w, h, rectWidth, rectHeight);
//      }
//      setPhoto = false;
//    }
//    save("/Users/kota/Documents/Processing/rain_window_backup/data/glitch.png");
//  }
//  println(setPhoto);
//  PImage img = loadImage("glitch.png");
//  image(img, 0, 0, width, height);

//  int x1 = (int) random(0, width);
//  int y1 = 0;

//  int x2 = round(x1 + random(-7, 7));
//  int y2 = round(random(-5, 5));

//  int w = (int) random(130, 200);
//  int h = height;

//  copy(x1, y1, w, h, x2, y2, w, h);
//}
