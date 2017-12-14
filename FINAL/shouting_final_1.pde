

void setup() {
   size(600, 600);
   rectMode(CENTER);
  strokeWeight(8);
  background(255);
face();
   hair();
 body();
   arms();
  fingers();
 
}



void face() {
   fill(131, 93, 83);
    rect(width/2, 390, 50, 80);
    ellipse(width/2, height/2, 100, 120);
    strokeWeight(5);
    fill(0);
    ellipse(width/2, 340, 30, 10);
    
    
}
void hair() {
  fill(0);
 arc(width/2, 280, 90, 80, PI, TWO_PI);
    ellipse(width/2, 220, 70, 70);
}

void body() {
  strokeWeight(8);
   fill(  162, 138, 210);
  quad(240, 390, 360, 390, 380, 490, 220, 490);
  
  beginShape();
  vertex(250, 390);
  vertex(140, 160);
  vertex(100, 160);
  vertex(237, 420);
  endShape();
   beginShape();
  vertex(350, 390);
  vertex(490, 160);
  vertex(530, 160);
  vertex(363, 420);
  endShape();
}

void arms() {
}

void fingers() {
}