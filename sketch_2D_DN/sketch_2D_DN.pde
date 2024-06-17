PShape N;
PShape D;
PShape DK;
PShape M;
boolean mirrorHorizontal = false;
boolean mirrorVertical = false;

void setup() {
  size(800, 600, P2D);
  background(255);
  stroke(0);
  strokeWeight(2);
  noFill();
  
  // Koordinat untuk kurva Bezier 
  float x1 = 70, y1 = 70;  // Titik awal
  float x2 = 265, y2 = 70;  // Titik kontrol pertama
  float x3 = 265, y3 = 310;  // Titik kontrol kedua
  float x4 = 70, y4 = 320; // Titik akhir
  
  // Koordinat untuk kurva Bezier 
  float x5 = 105, y5 = 120;  // Titik awal
  float x6 = 200, y6 = 125;  // Titik kontrol pertama
  float x7 = 200, y7 = 260;  // Titik kontrol kedua
  float x8 = 105, y8 = 265; // Titik akhir
  
  // Membuat PShape untuk huruf "D"
  D = createShape();
  D.beginShape();
  D.vertex(x1, y1);
  D.bezierVertex(x2, y2, x3, y3, x4, y4);
  D.endShape(CLOSE);
  
  // Membuat PShape untuk huruf "D Kecil"
  DK = createShape();
  DK.beginShape();
  DK.vertex(x5, y5);
  DK.bezierVertex(x6, y6, x7, y7, x8, y8);
  DK.endShape(CLOSE);
  
  // Membuat PShape untuk huruf "N"
  N = createShape();
  N.beginShape();
  N.vertex(260, 70);
  N.vertex(300, 70);
  N.vertex(360, 220); 
  N.vertex(360, 70);
  N.vertex(400, 70);
  N.vertex(400, 320);
  N.vertex(360, 320);
  N.vertex(300, 160);
  N.vertex(300, 320);
  N.vertex(260, 320);
  N.endShape(CLOSE);
  
  // Membuat PShape untuk huruf "M"
  M = createShape();
  M.beginShape();
  M.vertex(455, 70);  
  M.vertex(505, 70);  
  M.vertex(555, 160); 
  M.vertex(605, 70);  
  M.vertex(655, 70);  
  M.vertex(655, 320);  
  M.vertex(605, 320);  
  M.vertex(605, 160);   
  M.vertex(555, 240); 
  M.vertex(505, 160); 
  M.vertex(505, 320); 
  M.vertex(455, 320); 
  M.endShape(CLOSE);

}

void draw() {
  background(255);
  if (keyPressed) {
    if (key == 'w' || key == 'W') {
      N.translate(0, -5); // translasi N ke atas
      D.translate(0, -5); // translasi D ke atas
      DK.translate(0, -5); // translasi DK ke atas
      M.translate(0, -5); // translasi M ke atas
    } else if (key == 's' || key == 'S') {
      N.translate(0, 5); // translasi N ke bawah
      D.translate(0, 5); // translasi D ke bawah
      DK.translate(0, 5); // translasi DK ke bawah
      M.translate(0, 5); // translasi M ke bawah
    } else if (key == 'a' || key == 'A') {
      N.translate(-5, 0); // translasi N ke kiri
      D.translate(-5, 0); // translasi D ke kiri
      DK.translate(-5, 0); // translasi DK ke kiri
      M.translate(-5, 0); // translasi M ke kiri
    } else if (key == 'd' || key == 'D') {
      N.translate(5, 0); // translasi N ke kanan
      D.translate(5, 0); // translasi D ke kanan
      DK.translate(5, 0); // translasi DK ke kanan
      M.translate(5, 0); // translasi M ke kanan
    } else if (key == 'z' || key == 'Z') {
      N.scale(1.1); // perbesar N
      D.scale(1.1); // perbesar D
      DK.scale(1.1); // perbesar DK
      M.scale(1.1); // perbesar M
    } else if (key == 'x' || key == 'X') {
      N.scale(0.9); // perkecil N
      D.scale(0.9); // perkecil D
      DK.scale(0.9); // perkecil DK
      M.scale(0.9); // perkecil M
    } else if (key == 'b' || key == 'B') {
      mirrorHorizontal = !mirrorHorizontal; // toggle mirror horizontal
    } else if (key == 'v' || key == 'V') {
      mirrorVertical = !mirrorVertical; // toggle mirror vertical
    }
 }

  pushMatrix();
  if (mirrorHorizontal) {
    scale(-1, 1);
    translate(-width, 0);
  }
  if (mirrorVertical) {
    scale(1, -1);
    translate(0, -height);
  }

  shape(N); 
  shape(D);
  shape(DK);
  shape(M);
  popMatrix();
}
