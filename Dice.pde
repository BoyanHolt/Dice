Die aDie;
int rows;
int cols;
int offset = 20;
int total = 0;
void setup() {
  cols = width/200;
  rows = height/200-1;
  size(1000, 1000);
  aDie = new Die();
  roll();
}
void draw() {

}
void mousePressed() {
  roll();
}

void roll() {
background(255, 255, 255);
  total = 0;
  for (int y = 0; y < rows; y++) {
    for (int x = 0; x < cols; x++) {
      aDie.current = aDie.roll();
      total += aDie.current;

      fill(255, 0, 0, 45);
      aDie.show(200*x, 200*y);
      if (aDie.current <= 1) {
        fill(0, 0, 0, 255);
        ellipse(200*x+90, 200*y+90, 35, 35);
      } else if (aDie.current <= 2) {
        fill(0, 0, 0, 255);
        ellipse(200*x + 135, 200*y + 135, 35, 35);
        ellipse(200*x + 45, 200*y + 45, 35, 35);
      } else if (aDie.current <= 3) {
        fill(0, 0, 0, 255);
        ellipse(200*x + 45, 200*y + 45, 35, 35);
        ellipse(200*x + 90, 200*y + 90, 35, 35);
        ellipse(200*x + 135, 200*y + 135, 35, 35);
      } else if (aDie.current <= 4) {
        fill(0, 0, 0, 255);
        ellipse(200*x + 50, 200*y + 50, 35, 35);
        ellipse(200*x + 130, 200*y + 50, 35, 35);
        ellipse(200*x + 50, 200*y + 130, 35, 35);
        ellipse(200*x + 130, 200*y + 130, 35, 35);
      } else if (aDie.current <= 5) {
        fill(0, 0, 0, 255);
        ellipse(200*x + 40, 200*y + 40, 35, 35);
        ellipse(200*x + 140, 200*y + 40, 35, 35);
        ellipse(200*x + 40, 200*y + 140, 35, 35);
        ellipse(200*x + 140, 200*y + 140, 35, 35);
        ellipse(200*x + 90, 200*y + 90, 35, 35);
      } else if (aDie.current <= 6) {
        fill(0, 0, 0, 255);
        ellipse(200*x + 50, 200*y + 30, 35, 35);
        ellipse(200*x + 130, 200*y + 30, 35, 35);
        ellipse(200*x + 50, 200*y + 90, 35, 35);
        ellipse(200*x + 130, 200*y + 90, 35, 35);
        ellipse(200*x + 50, 200*y + 150, 35, 35);
        ellipse(200*x + 130, 200*y + 150, 35, 35);
      }
    }
    System.out.println();
  }
  System.out.print(total);
  textSize(70);
  text("Total:" + total,375,900);
  
}



