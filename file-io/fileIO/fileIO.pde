WriteToFile f = new WriteToFile();

void setup(){
  noLoop();
}

void draw(){
  f.openFile("nyfil.txt");
  f.writeLine("Hej med dig");
  f.writeLine("Hej med dig");
  f.endWriting();
  f.readLine();
  f.closeWriting();
  exit(); // Stops the program
}



class WriteToFile{

PrintWriter output;
BufferedReader input;
String filename;
//constructor  
WriteToFile(){
 
  }

void openFile(String filename){
    this.filename = filename;
    output = createWriter(filename);
}  
  
void writeLine(String txt) {
output.println(txt);

}

void readLine() {
    ///this.filename=filename; //<>//
  
  // Open the file
  this.input = createReader(this.filename);
  String line = null;
  try {
      String[] lines = loadStrings(this.filename); //<>//

      for (int i=0; i < lines.length; i++) {
        println(lines[i]);
        }
    input.close();
   }
   catch (IOException e) {
    e.printStackTrace();
  }
  
}




void endWriting(){
    output.flush(); // Writes the remaining data to the file
    
  }  
  
void closeWriting(){
  output.close(); // Finishes the file
}  
  
}
