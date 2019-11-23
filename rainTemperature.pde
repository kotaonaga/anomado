//温度。暖かい雨もあると思う。冷たい雨もある。凍雨とか。温度は色であらわせそう。
float t, t2, t3, t5, t6;
float t4 = height;
float x;
float y;
color yellow = #FFF200;
color pink = #EB6EA5;
float n=30;
color tmp;

void rainTemperature(){
  colorMode(RGB);
  noStroke();
  blendMode(ADD);
  fill(255, 3);
  rect(0, 0, 500, 800);

  blendMode(DIFFERENCE);
  fill(2+t, 20, 2, 50);
  //ellipse(sin(t)*100+400, tan(t)*120+400, n, n);
  ellipse(cos(t) * width, sin(t) * height, n, n);
  ellipse(-cos(t) * width, sin(t) * height, n, n);


  fill(255, 2 + t, 0, 50);
  ellipse(t2, t + 100, n, n);
  if (t2 > width) {
    t2 = 0;
  }

  fill(0, 2 + t, 123, 50);
  ellipse(0, t3, n, n);
  if (t3 > height) {
    t3 = 0;
  }

  fill(0, 2 + t, 255, 50);
  ellipse(width, t4, n, n);
  if (t4 < 0) {
    t4 = height;
  }

  fill(0, 255, t + 3, 30);
  ellipse(width/2, t5, n, n);
  if (t5 > height) {
    t5 = height/2;
  }

  fill(t + 3, 255, 23, 30);
  ellipse(sin(t) * 400, height/2, n, n);
  if (t5 > height) {
    t5 = height/2;
  }


  t=t+0.02;
  t2 = t2 + 2;
  t3 = t3 + 2;
  t4 = t4 - 2;
  t5 = t5 + 2;
  if(n < 500){
    n = n + 0.2;
  }else {
    n = 300;
  }
}
