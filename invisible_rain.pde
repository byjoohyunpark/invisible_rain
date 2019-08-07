  //import org.openkinect.processing.*;

  ArrayList <Particle> p;

  PImage img ;
  int number = 5000;
  int maxNumber = 10000;
  
  int w ;
  int h ;


  void setup() {
      size(800, 800);
      //fullScreen(FX2D);
     //fullScreen();

     w = 800;
     h = 800;

    //background(0, 0);
    //noCursor()
    
    
 img = createImage(w, h, ARGB);

     p = new ArrayList<Particle>();
}

void draw() {
   fill(0, 100);
   rect(0, 0, w, h);
   fill(255);
   
    for (int i = 0; i < number; i++) {
    p.add(new Particle());
    }
    for (Particle i : p) {
    i.update();
    i.show(); 
    }       
    killParticles();
  
 img.loadPixels();
 

for (int x = 0; x <  w; x++) {
      for (int y = 0; y < h; y++) {
   int clr = get(x, y);
   img.pixels[x + y * w] = color(clr);
      }}
 
    img.updatePixels();
    image(img, 0, 0, w, h);
}



void killParticles() {
  for (int i = p.size() - 1; i >=0; i--) {
    if ( p.get(i).isReadyToDie() || p.size()>maxNumber) {
      p.remove(i);
    }
  }
}
