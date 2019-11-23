//雨の密度を表す。パーリンノイズでできそう。霧みたいな雨とか逆に雨粒の間隔が空いた密度が少ない雨とか
int octaves = 4;
float falloff = 0.5;

void rainDensity() {
  smooth();
  frameRate(3);
  background(255, 0, 255);
  fill(255,0,255);
  rect(0, 0, width, height);

  noiseDetail(octaves, falloff);

  //int noiseXRange = mouseX/100;//mouseXは30までがきれいに見える
  //int noiseYRange = mouseY/100;
  //noiseに入れる値の差が小さいほど、より連続的なノイズになる。だからnoiseXRangeとかを作ることができる。
  int noiseXRange = (int) random(0,15);
  int noiseYRange = (int) random(0,15);

  loadPixels();
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      float noiseX = map(x, 0, width, 0, noiseXRange);
      float noiseY = map(y, 0, height, 0, noiseYRange);
      float noiseValue = 0;
      noiseValue = noise(noiseX, noiseY) * 255;
      //println(noiseValue);
      pixels[x+y*width] = color(noiseValue, 20);
    }
  }
  updatePixels();
  //println("octaves: "+octaves+" falloff: "+falloff+" noiseXRange: 0-"+noiseXRange+" noiseYRange: 0-"+noiseYRange);
}
