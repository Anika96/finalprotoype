

ArrayList<ParticleSystem> systems = new ArrayList<ParticleSystem>();

void setup() {
  size(800, 600);
  
}

float r = 50;
float buttonX = 400;
float buttonY = 200;

void draw() {
 background(255, 209, 220);
  ellipse(buttonX, buttonY, r*2, r*2);
  
  for (int i = 0; i < systems.size(); i++) {
    ParticleSystem t = systems.get(i);
    t.update();
  }


if (mousePressed) {
  systems.add(new ParticleSystem(mouseX,mouseY));

} 

}
}