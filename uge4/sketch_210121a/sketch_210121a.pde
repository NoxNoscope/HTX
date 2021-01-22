import controlP5.*;

ControlP5 cp5;

Textfield textfield;
Button button1;
float number = 0.0;

void setup() {
  size(500, 300);
  PFont font = createFont("arial", 24);

  // Kontakt til ConptrolP5 Biblioteket
  cp5 = new ControlP5(this);

  // Tekst-feltet hvor tallet skal indtastes
  textfield=cp5.addTextfield("input");
  textfield.setPosition(50, 80)
    .setSize(150, 50)
    .setFont(font)
    .setColor(color(255))
    .setColorCursor(color(255))
    .setAutoClear(false)
    .setLabel("")
    ;

  // Knappen der er knyttet til funktionen generate()
  button1=cp5.addButton("generate");
  button1.setPosition(230, 85)
    .setSize(180, 40)
    .setLabel("Læs tallet")
    .setFont(font)
    ;
  textFont(font);
}

void draw() {
  background(0, 151, 156);
  fill(255);
  if (Float.isNaN(number)) {
    text("Tallet er indtastet forkert", 50, 200);
  } else {
    text(number, 50, 200);
  }
}

public void generate() {
  // Tallet hentes som en tekststreng i tekst-feltet input
  String input = cp5.get(Textfield.class, "input").getText();
  input = input.replace(',', '.');  // Accepter dansk komma
  number = float(input);
  textfield.clear();
}
