void setup(){
  size(800,600);
  noLoop();
}
void draw(){
  println("Integer Max Value = " + Integer.MAX_VALUE);
  println("Integer Min Value = " + Integer.MIN_VALUE);
  println("Float Max Value = " + Float.MAX_VALUE);
  println("Float Min Value = " + Float.MIN_VALUE);
  println("Byte Max Value = " + Byte.MAX_VALUE);
  println("Byte Min Value = " + Byte.MIN_VALUE);
  println("Character Max Value: "+(Character.MAX_VALUE+0)); // Character.MAX_VALUE is \uFFFF. This is not a printable character by definition. When you perform an operation like -0 or +0 you are changing (type cast) the type to an int
  println("Character Min Value: "+(Character.MIN_VALUE-0)); //https://unicode-table.com/en/
  println("Short Max Value: "+(Short.MAX_VALUE));
  println("Short Min Value: "+(Short.MIN_VALUE));
  println("Long Max Value: "+(Long.MAX_VALUE));
  println("Long Min Value: "+(Long.MIN_VALUE));
  println("Double Max Value: "+(Double.MAX_VALUE+0));
  println("Double Min Value: "+(Double.MIN_VALUE));
 // crash(Integer.MAX_VALUE);
}

void crash(int i )
{
  //eksempel på overflow operation
  i ++;
  println(i);
}
