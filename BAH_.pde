//LO QUE PUDE SALVAR DE CODIGO ANTES DE QUE MI LAP FUERA BRUTALMENTE ATACADA POR UN VIRUS Y BORRARA TODO T__T 

import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.*;

// A reference to our box2d world
Box2DProcessing box2d;


ArrayList<Particle> particles;


void setup() {
  size(600,600);
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  box2d.setGravity(0, -20);
  particles = new ArrayList<Particle>();
  
  
}

void draw() {
  
   if (mousePressed) 
   {
    float sz = random(5,3);
    particles.add(new Particle(mouseX,mouseY,sz));
  }
  
 {
 stroke(1);   
 background (random(255),random(250),random(255));
 fill (#FEFF00);
 ellipse (300,300,200,200);
 fill(255);
 ellipse (270,280,25,35);
 fill(255);
 ellipse (330,280,25,45);
 fill(#BB00F0);
 ellipse (300,340,50,18);

  }
 


 
  box2d.step();
  
  
  for (Particle p: particles) {
    p.display();
  }


  for (int i = particles.size()-1; i >= 0; i--) {
    Particle p = particles.get(i);
    if (p.done()) {
      particles.remove(i);
    }
  }

}