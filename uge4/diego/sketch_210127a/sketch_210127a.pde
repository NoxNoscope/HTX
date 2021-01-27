import controlP5.*;

ControlP5 cp5;
int red = color(255,0,0);

Slider abc;

void setup() {
  size(1000, 1000);
    cp5 = new ControlP5(this);
  

     ;
  
  // create another slider with tick marks, now without
  // default value, the initial value will be set according to
  // the value of variable sliderTicks2 then.
     
  // add a vertical slider
  cp5.addSlider("R")
     .setPosition(0, height - 50)
     .setSize(200,50)
     .setRange(0,255)
     .setValue(128)
     ;
     cp5.addSlider("G")
     .setPosition(0,height - 100)
     .setSize(200,50)
     .setRange(0,255)
     .setValue(128)
     ;
     cp5.addSlider("B")
     .setPosition(0,height - 150)
     .setSize(200,50)
     .setRange(0,255)
     .setValue(128)
     ;
     
     
}

int x1 = 0;
int y1 = 0;
int x2 = 0;
int y2 = 0;
int x3 = 0;
int y3 = 0;

void draw(){
  
}

void mousePressed() {
  trimiddle(mouseX, mouseY);
  println("green");
}

void trimiddle(int x, int y) {
  if (x1 == 0) {
    x1 = x;
    y1 = y;
  } else if (x2 == 0) {
    x2 = x;
    y2 = y;
  } else if (x3 == 0) {
    x3 = x;
    y3 = y;
    trianglePoints();
  }
}

void trianglePoints() {
  triangle(x1,y1,x2,y2,x3,y3);
  x1 = 0;
  y1 = 0;
  x2 = 0;
  y2 = 0;
  x3 = 0;
  y3 = 0;
  println("trianglePoints");

}
