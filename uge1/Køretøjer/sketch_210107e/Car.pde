class Car extends Vehicle{

  // klassens tilstand
  int persons;
  String carColor;
  int wheels;
  
  //konstruktør
  
  Car(float a, float e, float t,int p){
  super(a,e,t);
  persons =p;
  
  }
  
  
  //getters / setters
  int getPersons(){
    return persons;
  }  


}
