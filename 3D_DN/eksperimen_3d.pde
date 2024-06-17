PShape d;
PShape NDepan;
PShape NBelakang;
PShape N1, N2, N3, N4, N5, N6, N7, N8, N9, N10;
PShape MDepan;
PShape MBelakang;
PShape M1, M2, M3, M4, M5, M6, M7, M8, M9, M10, M11;
float angleX = 0;
float angleY = 0;
float angleZ = 0;

void setup() {
  size(900, 500, P3D);
  fill(170); 

  // Membuat bentuk untuk huruf "D" 
  d = createShape(GROUP);
  
  PShape dd = createShape();
  dd.beginShape();
  dd.noStroke();
  dd.vertex(50, 70, 40);
  dd.vertex(50, 285, 40);
  dd.vertex(105, 285, 40);
  dd.vertex(105, 70, 40);
  dd.endShape(CLOSE);
  
  PShape dk = createShape();
  dk.beginShape();
  dk.noStroke();
  dk.vertex(105, 70, 40);
  dk.bezierVertex(255, 95, 40, 255, 260, 40, 105, 285, 40);
  dk.vertex(105, 240, 40);
  dk.bezierVertex(200, 250, 40, 200, 110, 40, 105, 110, 40);
  dk.endShape(CLOSE);
  
  PShape db = createShape();
  db.beginShape();
  db.noStroke();
  db.vertex(50, 70, -40);
  db.vertex(50, 285, -40);
  db.vertex(105, 285, -40);
  db.vertex(105, 70, -40);
  db.endShape(CLOSE);
  
  PShape dbk = createShape();
  dbk.beginShape();
  dbk.noStroke();
  dbk.vertex(105, 70, -40);
  dbk.bezierVertex(255, 95, -40, 255, 260, -40, 105, 285, -40);
  dbk.vertex(105, 240, -40);
  dbk.bezierVertex(200, 250, -40, 200, 110, -40, 105, 110, -40);
  dbk.endShape(CLOSE);
  
  PShape l1 = createShape();
  l1.beginShape();
  l1.noStroke();
  addDepth(l1, 50, 70, 40, 50, 285, 40, 50, 285, -40, 50, 70, -40);
  l1.endShape(CLOSE);
  
  PShape l2 = createShape();
  l2.beginShape();
  l2.noStroke();
  addDepth(l2, 50, 285, 40, 105, 285, 40, 105, 285, -40, 50, 285, -40);
  l2.endShape(CLOSE);
  
  PShape l3 = createShape();
  l3.beginShape();
  l3.noStroke();
  addDepth(l3, 105, 285, 40, 105, 70, 40, 105, 70, -40, 105, 285, -40);
  l3.endShape(CLOSE);
  
  PShape l4 = createShape();
  l4.beginShape();
  l4.noStroke();
  l4.vertex(105, 70, 40);
  l4.bezierVertex(255, 95, 40, 255, 260, 40, 105, 285, 40);
  l4.vertex(105, 255, -40);
  l4.bezierVertex(255, 260, -40, 255, 95, -40, 105, 70, -40);
  l4.endShape(CLOSE);
  
  PShape l5 = createShape();
  l5.beginShape();
  l5.noStroke();
  l5.vertex(105, 240, 40);
  l5.bezierVertex(200, 250, 40, 200, 110, 40, 105, 110, 40);
  l5.vertex(105, 110, -40);
  l5.bezierVertex(200, 110, -40, 200, 250, -40, 105, 240, -40);
  l5.endShape(CLOSE);
  
  PShape l6 = createShape();
  l6.beginShape();
  l6.noStroke();
  addDepth(l6, 50, 70, 40, 50, 285, 40, 50, 285, -40, 50, 70, -40);
  l6.endShape(CLOSE);

  d.addChild(dd); 
  d.addChild(dk);
  d.addChild(db);
  d.addChild(dbk);
  d.addChild(l1);
  d.addChild(l2);
  d.addChild(l3);
  d.addChild(l4);
  d.addChild(l5);
  d.addChild(l6);
  
  // Membuat bentuk untuk huruf "N"
  NBelakang = createShape();
  NBelakang.beginShape();
  NBelakang.noStroke();
  NBelakang.vertex(163, 70, -30);
  NBelakang.vertex(203, 70, -30);
  NBelakang.vertex(263, 220, -30); 
  NBelakang.vertex(263, 70, -30);
  NBelakang.vertex(303, 70, -30);
  NBelakang.vertex(303, 280, -30);
  NBelakang.vertex(263, 280, -30);
  NBelakang.vertex(203, 160, -30);
  NBelakang.vertex(203, 280, -30);
  NBelakang.vertex(163, 280, -30);
  NBelakang.endShape(CLOSE);
  
  NDepan = createShape();
  NDepan.beginShape();
  NDepan.noStroke();
  NDepan.vertex(163, 70, 40);
  NDepan.vertex(203, 70, 40);
  NDepan.vertex(263, 220, 40); 
  NDepan.vertex(263, 70, 40);
  NDepan.vertex(303, 70, 40);
  NDepan.vertex(303, 280, 40);
  NDepan.vertex(263, 280, 40);
  NDepan.vertex(203, 160, 40);
  NDepan.vertex(203, 280, 40);
  NDepan.vertex(163, 280, 40);
  NDepan.endShape(CLOSE);
  
  N1 = createShape();
  N1.beginShape();
  N1.noStroke();
  N1.vertex(163, 70, -30);  
  N1.vertex(163, 70, 40);
  N1.vertex(203, 70, 40);
  N1.vertex(203, 70, -30);  
  N1.endShape(CLOSE);
  
  N2 = createShape();
  N2.beginShape();
  N2.noStroke();
  N2.vertex(203, 70, -30); 
  N2.vertex(203, 70, 40);
  N2.vertex(263, 220, 40);
  N2.vertex(263, 220, -30);  
  N2.endShape(CLOSE);
  
  N3 = createShape();
  N3.beginShape();
  N3.noStroke();
  N3.vertex(263, 220, -30);  
  N3.vertex(263, 220, 40);
  N3.vertex(263, 70, 40);
  N3.vertex(263, 70, -30);  
  N3.endShape(CLOSE);
  
  N4 = createShape();
  N4.beginShape();
  N4.noStroke();
  N4.vertex(263, 70, -30);  
  N4.vertex(263, 70, 40);
  N4.vertex(303, 70, 40);
  N4.vertex(303, 70, -30); 
  N4.endShape(CLOSE);
  
  N5 = createShape();
  N5.beginShape();
  N5.noStroke();
  N5.vertex(303, 70, -30);  
  N5.vertex(303, 70, 40);
  N5.vertex(303, 280, 40);
  N5.vertex(303, 280, -30);  
  N5.endShape(CLOSE);
  
  N6 = createShape();
  N6.beginShape();
  N6.noStroke();
  N6.vertex(303, 280, -30);  
  N6.vertex(303, 280, 40);
  N6.vertex(263, 280, 40);
  N6.vertex(263, 280, -30);  
  N6.endShape(CLOSE);
  
  N7 = createShape();
  N7.beginShape();
  N7.noStroke();
  N7.vertex(263, 280, -30);  
  N7.vertex(263, 280, 40);
  N7.vertex(203, 160, 40);
  N7.vertex(203, 160, -30);  
  N7.endShape(CLOSE);
  
  N8 = createShape();
  N8.beginShape();
  N8.noStroke();
  N8.vertex(203, 160, -30);  
  N8.vertex(203, 160, 40);
  N8.vertex(203, 280, 40);
  N8.vertex(203, 280, -30);  
  N8.endShape(CLOSE);
  
  N9 = createShape();
  N9.beginShape();
  N9.noStroke();
  N9.vertex(203, 280, -30);  
  N9.vertex(203, 280, 40);
  N9.vertex(163, 280, 40);
  N9.vertex(163, 280, -30);  
  N9.endShape(CLOSE);
  
  N10 = createShape();
  N10.beginShape();
  N10.noStroke();
  N10.vertex(163, 85, -30);  
  N10.vertex(163, 85, 40);
  N10.vertex(163, 280, 40);
  N10.vertex(163, 280, -30);  
  N10.endShape(CLOSE);
  
  // Membuat bentuk huruf "M"
  MDepan = createShape();
  MDepan.beginShape();
  MDepan.noStroke();
  MDepan.vertex(200, 70, 40);
  MDepan.vertex(240, 70, 40);
  MDepan.vertex(270, 150, 40); 
  MDepan.vertex(300, 70, 40);
  MDepan.vertex(340, 70, 40);
  MDepan.vertex(340, 280, 40);
  MDepan.vertex(310, 280, 40);
  MDepan.vertex(310, 150, 40);
  MDepan.vertex(270, 240, 40);
  MDepan.vertex(230, 150, 40);
  MDepan.vertex(230, 280, 40);
  MDepan.vertex(200, 280, 40);
  MDepan.vertex(200, 70, 40);
  MDepan.endShape(CLOSE);
  
  MBelakang = createShape();
  MBelakang.beginShape();
  MBelakang.noStroke();
  MBelakang.vertex(200, 70, -40);
  MBelakang.vertex(240, 70, -40);
  MBelakang.vertex(270, 150, -40); 
  MBelakang.vertex(300, 70, -40);
  MBelakang.vertex(340, 70, -40);
  MBelakang.vertex(340, 280, -40);
  MBelakang.vertex(310, 280, -40);
  MBelakang.vertex(310, 150, -40);
  MBelakang.vertex(270, 240, -40);
  MBelakang.vertex(230, 150, -40);
  MBelakang.vertex(230, 280, -40);
  MBelakang.vertex(200, 280, -40);
  MBelakang.vertex(200, 70, -40);
  MBelakang.endShape(CLOSE);
  
  M1 = createShape();
  M1.beginShape();
  M1.noStroke();
  M1.vertex(200, 70, 40);
  M1.vertex(200, 70, -40);
  M1.vertex(240, 70, -40);
  M1.vertex(240, 70, 40);
  M1.endShape(CLOSE);

  M2 = createShape();
  M2.beginShape();
  M2.noStroke();
  M2.vertex(240, 70, 40);
  M2.vertex(240, 70, -40);
  M2.vertex(270, 150, -40);
  M2.vertex(270, 150, 40);
  M2.endShape(CLOSE);

  M3 = createShape();
  M3.beginShape();
  M3.noStroke();
  M3.vertex(270, 150, 40);
  M3.vertex(270, 150, -40);
  M3.vertex(300, 70, -40);
  M3.vertex(300, 70, 40);
  M3.endShape(CLOSE);

  M4 = createShape();
  M4.beginShape();
  M4.noStroke();
  M4.vertex(300, 70, 40);
  M4.vertex(300, 70, -40);
  M4.vertex(340, 70, -40);
  M4.vertex(340, 70, 40);
  M4.endShape(CLOSE);

  M5 = createShape();
  M5.beginShape();
  M5.noStroke();
  M5.vertex(340, 70, 40);
  M5.vertex(340, 70, -40);
  M5.vertex(340, 280, -40);
  M5.vertex(340, 280, 40);
  M5.endShape(CLOSE);

  M6 = createShape();
  M6.beginShape();
  M6.noStroke();
  M6.vertex(340, 280, 40);
  M6.vertex(340, 280, -40);
  M6.vertex(310, 280, -40);
  M6.vertex(310, 280, 40);
  M6.endShape(CLOSE);

  M7 = createShape();
  M7.beginShape();
  M7.noStroke();
  M7.vertex(310, 280, 40);
  M7.vertex(310, 280, -40);
  M7.vertex(310, 150, -40);
  M7.vertex(310, 150, 40);
  M7.endShape(CLOSE);

  M8 = createShape();
  M8.beginShape();
  M8.noStroke();
  M8.vertex(310, 150, 40);
  M8.vertex(310, 150, -40);
  M8.vertex(270, 240, -40);
  M8.vertex(270, 240, 40);
  M8.endShape(CLOSE);

  M9 = createShape();
  M9.beginShape();
  M9.noStroke();
  M9.vertex(270, 240, 40);
  M9.vertex(270, 240, -40);
  M9.vertex(230, 150, -40);
  M9.vertex(230, 150, 40);
  M9.endShape(CLOSE);

  M10 = createShape();
  M10.beginShape();
  M10.noStroke();
  M10.vertex(230, 150, 40);
  M10.vertex(230, 150, -40);
  M10.vertex(230, 280, -40);
  M10.vertex(230, 280, 40);
  M10.endShape(CLOSE);

  M11 = createShape();
  M11.beginShape();
  M11.noStroke();
  M11.vertex(230, 280, 40);
  M11.vertex(230, 280, -40);
  M11.vertex(200, 280, -40);
  M11.vertex(200, 280, 40);
  M11.endShape(CLOSE);
}

void draw() {
  background(255);
  lights();

  // Apply rotation
  translate(width / 4, height / 2);  // Adjusted translation for centering
  rotateX(angleX);
  rotateY(angleY);
  rotateZ(angleZ);
  translate(-width / 4, -height / 2);

  // Draw shapes
  shape(d);  // Draw letter "D"
  translate(115, 0);  
  shape(NDepan); // Draw letter N
  shape(NBelakang);
  shape(N1);
  shape(N2);
  shape(N3);
  shape(N4);
  shape(N5);
  shape(N6);
  shape(N7);
  shape(N8);
  shape(N9);
  shape(N10);
  translate(150, 0); 
  shape(MDepan);  // Draw letter M
  shape(MBelakang);
  shape(M1);
  shape(M2);
  shape(M3);
  shape(M4);
  shape(M5);
  shape(M6);
  shape(M7);
  shape(M8);
  shape(M9);
  shape(M10);
  shape(M11);
  
}

void keyPressed() {
  float angleStep = PI / 60;

  if (key == 'w' || key == 'W') {
    angleX -= angleStep;  // Pitch up
  }
  if (key == 's' || key == 'S') {
    angleX += angleStep;  // Pitch down
  }
  if (key == 'a' || key == 'A') {
    angleY -= angleStep;  // Yaw left
  }
  if (key == 'd' || key == 'D') {
    angleY += angleStep;  // Yaw right
  }
  if (key == 'q' || key == 'Q') {
    angleZ -= angleStep;  // Roll left
  }
  if (key == 'e' || key == 'E') {
    angleZ += angleStep;  // Roll right
  }
}

void addDepth(PShape shape, float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3, float x4, float y4, float z4) {
  shape.vertex(x1, y1, z1);
  shape.vertex(x2, y2, z2);
  shape.vertex(x3, y3, z3);
  shape.vertex(x4, y4, z4);
}
