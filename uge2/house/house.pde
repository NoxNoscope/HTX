//lav et rum //<>// //<>// //<>//
Room house = new Room("Room", false, 100, 300);


void setup() {
  size(800, 800);
  background(205);
}

void draw() {
  // tegn taget
  fill(50);
  triangle(50, 290, 250, 150, 450, 290);
  // tegn rum
  house.drawRoom();
}

void mouseClicked() {
  // lav baggrund
  background(205);
  fill(105);
  rect(80, 680, 300, 30);
  fill(250);

  // find ud af om vi tænder eller slukker lyset
  if (house.isRoomClicked(mouseX, mouseY))
    if (house.light) {
      house.setLight(false);
      text("Turning off the light in "+house.getRoomName(), 100, 700);
    } else {
      house.setLight(true);
      text("Turning on the light in "+house.getRoomName(), 100, 700);
    }
}



void checkHouse(Room[] house) { 
  boolean found=false;
  for (int i=0; i< house.length; i++) {
    if (house[i].isLightOn() == true) {
      println ("WOW turn off the light in the "+house[i].whatRoom());
      found = true;
    }
  }
  if (!found) {
    println("All right! You'r ready to go!");
  } else {
    println("you forgot something");
  }
}
