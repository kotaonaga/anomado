//単純に雨の強さ。強くなったり弱くなったり。
Agent[] agents = new Agent[5000];
int agentsCount = 4000;
float noiseScale = 100, noiseStrength = 10; 
float overlayAlpha = 5, agentsAlpha = 20;

void rainStrength(){
  
  //fill(255);
  //noStroke();
  //rect(0, 0, width, height);
  
  smooth();
  colorMode(HSB, 360, 100, 100, 100);
  fill(0, overlayAlpha);
  noStroke();
  rect(0, 0, width, height);
  stroke(70, 0, 100, agentsAlpha);
  for(int i = 0; i < agentsCount; i++) agents[i].update();
  
}
