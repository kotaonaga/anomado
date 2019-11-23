color lerp;
color lerp2;
float amp;
String sortMode = null;

void spring1() {
  for (int i = 0; i < width; i++) {
    fill(0, 0, i);
    amp = map(i, 0, width, 0, 1);
    lerp = lerpColor(spring1, spring2, amp);
    fill(lerp);
    rect(i, 0, 10, height);
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


void fall1() {
  for (int i = 0; i < width; i++) {
    fill(0, 0, i);
    amp = map(i, 0, width, 0, 1);
    lerp = lerpColor(fall1, fall2, amp);
    fill(lerp);
    rect(i, 0, 10, height);
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


void photoCopy() {
  int x1 = (int) random(0, width);
  int y1 = 0;

  int x2 = round(x1 + random(-7, 7));
  int y2 = round(random(-5, 5));

  int w = (int) random(10, 20);
  int h = (int) random(10, height);

  copy(x1, y1, w, h, x2, y2, w, h);
}


void photoSort() {
  noStroke();
  colorMode(HSB, 360, 100, 100, 100);
  
  float rectNoise = noise(random(10));
  int tileCount = width / max(mouseX, 5);
  //float rectSize = width / float(tileCount) + rectNoise * 0.02;
  float rectSize = width / float(tileCount);
  // get colors from image
  int i = 0;
  colors = new color[tileCount * int(tileCount * 1.6)];
  
  for (int gridY=0; gridY<int(tileCount * 1.6); gridY++) {
    for (int gridX=0; gridX<tileCount; gridX++) {
      int px = (int) (gridX * rectSize);
      int py = (int) (gridY * rectSize);
      colors[i] = photoSort.get(px, py);
      i++;
    }
  }
  
  if (sortMode != null) colors = GenerativeDesign.sortColors(this, colors, sortMode);

  //ピクセルを描画
  i = 0;
  for (int gridY=0; gridY < int(tileCount * 1.6); gridY++) {
    for (int gridX=0; gridX<tileCount; gridX++) {
      fill(colors[i]);
      rect(gridX*rectSize, gridY*rectSize, rectSize, rectSize);
      i++;
    }
  }
  
  
  
}
