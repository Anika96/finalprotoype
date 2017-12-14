class Particle {
  float x; 
  float y;
  float dx;
  float dy;
  color c;
  float s;
  float life;

  //constructor
  Particle(float _x, float _y) {
    x = _x;
    y = _y;
    dx = random(-3, 3);
    dy = random(-3, 3);
    c = color(random(255), random(255), random(255));
    s = random(40,100);
    //println("created a ball!");
    life = 30;
  }

  void display() {
   strokeWeight(3);
    fill(c);
    ellipse(x, y, s, s);
  }

  void update() {
    life--;
    s = map(life, 60, 0, 50, 0);
    
    //c = color(map(dist(mouseX,mouseY,x,y),0,100,255,0));
    if (x < s/2 || x > width-s/2) {
      dx *= -1;
    }
    
    if (y < s/2 || y > height-s/2) {
      dy *= -1;
    }
    
    x += dx;
    y += dy;
  }
  
  void setSize(float siz) {
    s = siz;
  }
}


class ParticleSystem {
  float x; 
  float y;
  ArrayList<Particle> p;

  ParticleSystem(float _x, float _y) {
    p = new ArrayList<Particle>();
    x = _x;
    y = _y;
  }

  void update() {
    Particle b = new Particle(x, y);
    if (mousePressed) {
      if (mouseX < buttonX + r && mouseX > buttonX - r && mouseY < buttonY + r && mouseY > buttonY - r) {
    p.add(b);
    }
   }

    for (int i = p.size()-1; i >= 0; i--) {
      Particle temp = p.get(i);
      temp.update();
      temp.display();
      if (temp.life < 0) {
        p.remove(i);
      }
    }
  }
  }
  
 