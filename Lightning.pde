int startX1 = 170;//left
int startY1 = 360;

int endX1 = 170;
int endY1 = 360;

int startX2 = 430;//right
int startY2 =360;

int endX2 = 430;
int endY2 = 360;

void setup()
{
  size(600, 600);
  noLoop();
  frameRate(1);
}

void draw()
{
  background(188, 47, 47);
  pushStyle();
  fill(0, 0, 0);
  beginShape();//torso
  vertex(200, 600);
  vertex(400, 600);
  vertex(325, 400);
  vertex(275, 400);
  endShape();

  beginShape();//left arm
  vertex(267, 422);
  vertex(244, 484);
  vertex(180, 450);
  vertex(180, 350);
  endShape();

  beginShape();//right arm
  vertex(333, 422);
  vertex(356, 483);
  vertex(420, 450);
  vertex(420, 350);
  endShape();

  fill(200, 200, 200);
  ellipse(430, 360, 30, 30);//right hand
  pushMatrix();//thumb
  translate(410, 360);
  rotate(radians(-70));
  ellipse(0, 0, 10, 20);
  popMatrix();

  pushMatrix();
  translate(416, 340);
  rotate(radians(-20));
  ellipse(0, 0, 10, 30);
  popMatrix();

  ellipse(430, 335, 10, 30);

  pushMatrix();
  translate(444, 340);
  rotate(radians(20));
  ellipse(0, 0, 10, 30);
  popMatrix();

  ellipse(170, 360, 30, 30);//left hand
  pushMatrix();//thumb
  translate(190, 360);
  rotate(radians(70));
  ellipse(0, 0, 10, 20);
  popMatrix();

  pushMatrix();
  translate(185, 340);
  rotate(radians(20));
  ellipse(0, 0, 10, 30);
  popMatrix();

  ellipse(170, 335, 10, 30);

  pushMatrix();
  translate(155, 340);
  rotate(radians(-20));
  ellipse(0, 0, 10, 30);
  popMatrix();

  fill(0, 0, 0);
  beginShape();//hood
  curveVertex(275, 400);
  curveVertex(275, 400);
  curveVertex(255, 405);
  curveVertex(250, 370);
  curveVertex(290, 300);
  curveVertex(300, 290);
  curveVertex(310, 300);
  curveVertex(350, 370);
  curveVertex(345, 405);
  curveVertex(325, 400); 
  curveVertex(325, 400);
  endShape();

  fill(200, 200, 200);
  ellipse(300, 360, 70, 70);//head

  fill(237, 221, 43);
  ellipse(285, 350, 10, 10);//eyes
  ellipse(315, 350, 10, 10);

  noFill();
  beginShape();//mouth
  vertex(280, 370);
  vertex(290, 380);
  vertex(300, 370);
  vertex(310, 380);
  vertex(320, 370);
  endShape();
  popStyle();

  pushStyle();
  strokeWeight(4);
  frameRate(5);
  while (endY1 >= 0)
  {
    stroke(((float)Math.random()*41), ((float)Math.random()*150), ((float)Math.random()*241));
    endX1 = startX1 + ((int)(Math.random()*19)-9);
    endY1 = startY1 - ((int)(Math.random()*10));
    line(startX1, startY1, endX1, endY1);
    startX1 = endX1;
    startY1 = endY1;
  }

  while (endY2 >= 0)
  {
    stroke(((float)Math.random()*41), ((float)Math.random()*150), ((float)Math.random()*241));
    endX2 = startX2 + ((int)(Math.random()*19)-9);
    endY2 = startY2 - ((int)(Math.random()*10));
    line(startX2, startY2, endX2, endY2);
    startX2 = endX2;
    startY2 = endY2;
  }
  popStyle();
}

void mousePressed()
{
  startX1 = 170;//left
  startY1 = 360;

  endX1 = 170;
  endY1 = 360;

  startX2 = 430;//right
  startY2 =360;

  endX2 = 430;
  endY2 = 360;
  redraw();
}
