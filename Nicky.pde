//Nicky, Code1,#2, 9/10/2019

void setup() {
  size(400, 400);
  frameRate(100);
  background(100);
}



void draw() {
  float bg = mouseX * mouseY / 160000 * 255;
  background(bg);
  
  //let faceHeight = random(height/5, height/1.5);
  //let faceWidth = random(width/4, width/1.2);
  float faceHeight = mouseX/1.8+20;
  float faceWidth = mouseY/1.8+20;
  //let faceCorner = random(height/20, height/6);
  float faceCorner = mouseX/10+10;
  float hairHeight = random(faceCorner, height/2-faceHeight/2);
  float hairWidth = faceWidth;
  float hairPositionY = (height/2-faceHeight/2-hairHeight);
  float eye1PositionX = (width/2)-(faceWidth/4);
  float eye2PositionX = (width/2)+(faceWidth/4);
  float eyeSize = random(faceWidth/10, faceWidth/4);
  float light1PositionX = eye1PositionX - eyeSize/6;
  float light1PositionY = height/2 - eyeSize/6;
  float light2PositionX = eye2PositionX - eyeSize/6;
  float light2PositionY = height/2 - eyeSize/6;
  float lightSize = eyeSize/3;
  float mouthPositionX = width/2;
  float mouthPositionY = height/2+faceHeight/12;
  float mouthSize = random(faceHeight/6, faceHeight/6);
  float mouthDegree = random(mouseX/800-0.3, mouseX/800);
  //let faceColorG = random(-30, 30);
  //let faceColorB = random(-50, 50);
  float faceColorG = mouseX/3;
  float faceColorB = mouseY/3;
  //let faceShade = random(-60, 5);
  float faceShade = -40;
  noStroke();
  
  //face
  fill(250+faceShade,190+faceColorG+faceShade,190+faceColorB+faceShade);
  rectMode(CENTER);
  rect(width/2, height/2, faceWidth, faceHeight, faceCorner);
  
  //eye1
  fill(0);
  circle(eye1PositionX, height/2, eyeSize);
  
  //eye2
  fill(0);
  circle(eye2PositionX, height/2, eyeSize);
  
  //light1
  fill(255);
  circle(light1PositionX, light1PositionY, lightSize);
  
  //light2
  fill(255);
  circle(light2PositionX, light2PositionY, lightSize);
  
  //mouth
  stroke(0);
  strokeWeight(2+mouseX/120+mouseY/120);
  fill(250+faceShade,190+faceColorG+faceShade,190+faceColorB+faceShade);
  arc(mouthPositionX, mouthPositionY, mouthSize, mouthSize, 0+mouthDegree, PI-mouthDegree);
  
  
  
}
