
float theta1=0.0;
float theta2=0.0;

int armLength = 100;


float arm1x;
float arm1y;

float arm2x;
float arm2y;

float lastarm2x;
float lastarm2y;

PGraphics layer;


void setup() {

 size(640,640);
 arm2x = armLength*cos(theta1)+width/2 + armLength*cos(theta2);
 arm2y = armLength*sin(theta1)+height/2 + armLength*sin(theta2);
 layer = createGraphics(width,height);
 background(0);
 stroke(255);
 ellipse(width/2,width/2,10,10);
 drawBackground();

}

void drawBackground() {
  stroke(255);
  line(0,height/2,width,height/2);
  line(width/2,0,width/2,height);
  ellipse(width/2,width/2,10,10);

  
}

void draw(){
  background(0);
  image(layer,0,0);
  
  theta1+=0.02;
  theta2 = theta1*PI;
  
  arm1x = armLength*cos(theta1) + width/2;
  arm1y = armLength*sin(theta1) + height/2 ;
  lastarm2x = arm2x;
  lastarm2y = arm2y;
  arm2x = armLength*cos(theta2) + arm1x;
  arm2y = armLength*sin(theta2) + arm1y;
  
  layer.beginDraw();
  layer.stroke(255);
  layer.line(lastarm2x, lastarm2y, arm2x,arm2y);
  layer.stroke(255);
  layer.endDraw();
  line(width/2,height/2,arm1x,arm1y);
  line(arm1x,arm1y, arm2x,arm2y);
}