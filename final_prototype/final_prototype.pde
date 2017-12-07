//i need mutliple buttons 
//need to arranged in a grid style 
//and when each button is pressed the colours change accorndginly 

import processing.sound.*;

SoundFile file;

int numButtons = 10;

float buttonX[] = new float[numButtons]; 
float buttonY[] = new float[numButtons];
float r[] = new float[numButtons];
color c[] = new color[numButtons];

void setup() {
  size(800, 600);
  file = new SoundFile(this, "ping.mp3");


 for (int i = 0; i < numButtons; i++) {
   r[i] = 50;
   buttonX[i] = random(r[i]*2, width - r[i]);
    buttonY[i] = random(r[i], height - r[i]);
    c[i] = color(185, 70, 197);
    }
  }

void draw() {
    background(255, 209, 220);
    for (int i = 0; i < numButtons; i++) {
    
    fill(c[i]);
    
    ellipse(buttonX[i], buttonY[i], r[i]*2, r[i]*2);

 
    
if (mousePressed) {
     if (mouseX < buttonX[i] + r[i] && mouseX > buttonX[i] - r[i] && mouseY < buttonY[i] + r[i] && mouseY > buttonY[i] - r[i]) {
        c[i] = color(random(255), random(255), random(255));
        r[i] ++;
        file.play();
        buttonX[i] --; //use a map to stop it. 
     } 
} else {
       r[i] = 50;
      
       c[i] = color(185, 70, 197);
       
     }
     
     
 
     }
  
}
    