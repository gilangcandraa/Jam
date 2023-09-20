void setup() {
  size(400, 400);
  noStroke();
  noFill();
  smooth();
  frameRate(1);
  ellipseMode(CENTER);
}

void draw() {
  background(255);
  translate(width / 2, height / 2);

  fill(#653CBF);
  ellipse(0, 0, 250, 250);
  fill(#E6DBFC);
  ellipse(0, 0, 220, 220);

  fill(0);
  textSize(32);
  textAlign(CENTER, CENTER);
  for (int i = 1; i <= 12; i++) {
    float angle = radians(map(i, 0, 12, -90, 270));
    float x = 90 * cos(angle);
    float y = 90 * sin(angle);
    text(i, x, y);
  }

  // Waktu saat ini
  float detik = second();
  float menit = minute();
  float jam = hour() % 12; 

  
  stroke(255, 0, 0); 
  float detikSudut = map(detik, 0, 60, -90, 270);
  float detikX = 0.8 * 90 * cos(radians(detikSudut));
  float detikY = 0.8 * 90 * sin(radians(detikSudut));
  line(0, 0, detikX, detikY);

  
  stroke(#0300FA); 
  float menitSudut = map(menit, 0, 60, -90, 270);
  float menitX = 0.6 * 90 * cos(radians(menitSudut));
  float menitY = 0.6 * 90 * sin(radians(menitSudut));
  line(0, 0, menitX, menitY);

 
  stroke(#000005); 
  float jamSudut = map(jam, 0, 12, -90, 270);
  float jamX = 0.5 * 90 * cos(radians(jamSudut));
  float jamY = 0.5 * 90 * sin(radians(jamSudut));
  line(0, 0, jamX, jamY);
}
