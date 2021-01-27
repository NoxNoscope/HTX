
// import af biblioteket
import controlP5.*;

//deklaration af variablen cp5 til type ControlP5
ControlP5 cp5;

//deklaration af variablen textfield og button1 til typerne Textfield og Button 
Textfield textfield1;
Textfield textfield2;
Textfield textfield3;
Textfield textfield4;
Textfield textfield5;
Textfield textfield6;
Button button1;


int x1,x2,x3,y1,y2,y3;

void setup() {
  size(500, 300);
  // vi vælger en font som skrifttype
  PFont font = createFont("arial", 12);

  // Kontakt til ConptrolP5 Biblioteket - initieringen
  cp5 = new ControlP5(this);

  // Tekst-feltet hvor tallet skal indtastes
  // initiering af textfield
  textfield1=cp5.addTextfield("x1");
  // nu sætter vi alle attributter for objektet ved brug af set
  textfield1.setPosition(40, 250)
    .setSize(80, 20)
    .setFont(font)
    .setColor(color(255))
    .setColorCursor(color(255))
    .setAutoClear(false)
    .setLabel("")
    ;

textfield1=cp5.addTextfield("y1");
  // nu sætter vi alle attributter for objektet ved brug af set
  textfield1.setPosition(40, 275)
    .setSize(80, 20)
    .setFont(font)
    .setColor(color(255))
    .setColorCursor(color(255))
    .setAutoClear(false)
    .setLabel("")
    ;


textfield1=cp5.addTextfield("x2");
  // nu sætter vi alle attributter for objektet ved brug af set
  textfield1.setPosition(130, 250)
    .setSize(80, 20)
    .setFont(font)
    .setColor(color(255))
    .setColorCursor(color(255))
    .setAutoClear(false)
    .setLabel("")
    ;

textfield1=cp5.addTextfield("y2");
  // nu sætter vi alle attributter for objektet ved brug af set
  textfield1.setPosition(130, 275)
    .setSize(80, 20)
    .setFont(font)
    .setColor(color(255))
    .setColorCursor(color(255))
    .setAutoClear(false)
    .setLabel("")
    ;


textfield1=cp5.addTextfield("x3");
  // nu sætter vi alle attributter for objektet ved brug af set
  textfield1.setPosition(220, 250)
    .setSize(80, 20)
    .setFont(font)
    .setColor(color(255))
    .setColorCursor(color(255))
    .setAutoClear(false)
    .setLabel("")
    ;

textfield1=cp5.addTextfield("y3");
  // nu sætter vi alle attributter for objektet ved brug af set
  textfield1.setPosition(220, 275)
    .setSize(80, 20)
    .setFont(font)
    .setColor(color(255))
    .setColorCursor(color(255))
    .setAutoClear(false)
    .setLabel("")
    ;

  // Knappen der er knyttet til funktionen generate()
  // initiering af button1, bemærk vi binder en funktion til knappen. Hvis der trykkes på den skal den køre funktionen generate
  button1=cp5.addButton("generate");
  // nu sætter vi alle attributter for objektet ved brug af set
  button1.setPosition(320, 250)
    .setSize(80, 20)
    .setLabel("Kør")
    .setFont(font)
    ;
  // set font = skrittype
  textFont(font);
}

void draw() {
  background(0, 151, 156);
  fill(255);
  
  // validering af inputdata
  
  triangle(x1,y1,x2,y2,x3,y3);
}

// Se linje 37, hvis der trykke på knappe aktiveres programmet 
public void generate() {
  // Tallet hentes som en tekststreng i tekst-feltet input
  x1 = int(cp5.get(Textfield.class, "x1").getText()); // hent det som står i tekstfeltet
  y1 = int(cp5.get(Textfield.class, "y1").getText()); // hent det som står i tekstfeltet
  
  x2 = int(cp5.get(Textfield.class, "x2").getText()); // hent det som står i tekstfeltet
  y2 = int(cp5.get(Textfield.class, "y2").getText()); // hent det som står i tekstfeltet
  
  x3 = int(cp5.get(Textfield.class, "x3").getText()); // hent det som står i tekstfeltet
  y3 = int(cp5.get(Textfield.class, "y3").getText()); // hent det som står i tekstfeltet
}
