Vehicle v = new Vehicle(7,4000,10000);
Car c = new Car(20,100,2000,3);


void setup(){
noLoop();
}

void draw(){

  
   
  
  println(v.getAfstand()); //<>//
  println(c.getAfstand());
  println("Personer: ",c.getPersons());
}

/*

model -> data  

view -> skærm

controller -> logik

*/
