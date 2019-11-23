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
