class DisplayStudent{

  int xPos, yPos;
  

DisplayStudent(Studerende s){}

void setXpos(int x){
  this.xPos = x;
}


void printStudent() {

    text(s.getSchool(), 50, 80);
    text(s.getName(), 50, 100);
    text("Hvor fattig er "+s.getName(), 50, 120);
    fill(255);
    rect(180, 110, 100, 10);
    fill(255, 0, 0);
    rect(180, 110, poorness, 10);
    fill(0);
  }


}
