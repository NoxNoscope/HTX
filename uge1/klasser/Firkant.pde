class Firkant {

  float x, y;


  Firkant() {
  }

  void generate() {
    this.x = random(600);
    this.y = random(400);
  }

  void drawFirkant() {

    square(x, y, 100);
  }
}
