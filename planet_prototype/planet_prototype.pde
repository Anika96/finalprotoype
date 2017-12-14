
//sun 
//planet reveolving around the sun
//oon of planet revolving around planet 
float angle = 0;
float r = 25;
float buttonX = 0;
float buttonY = 0;
void setup() {
   size(600,600);
 
    
}

void draw() {
   strokeWeight(3);
     background(255);
     translate(width/2, height/2);
     
     fill(255,  255,  0);
  ellipse(buttonX, buttonY, r*2, r*2);
  
  //
  pushMatrix();
  rotate(angle);
  translate(20, 60);
  fill(0, 255, 0);
  ellipse(buttonX, buttonY, 20, 20);
   popMatrix();
  
 
  if (mousePressed) {
    if (mouseX < width/2 + r && mouseX > width/2 - r && mouseY < height/2 + r && mouseY > height/2 - r) {
  angle += 0.02;
  
 
}
  }



}