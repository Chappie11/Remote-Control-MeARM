import processing.serial.*;

Serial port;

void setup() {
  
  size(300,300);
  
  print("Hey There!");
  print("Hit Left or Right Key to Move your motor!g");
  
  print(Serial.list());
  
  port = new Serial(this, Serial.list()[2], 9600);
}

void draw()
{
if( keyPressed) {
    {
      if (keyCode == LEFT ){  
        port.write('L');
      }
      
      if (keyCode == RIGHT){ 
        port.write('R');
      }
      
    
      if (keyCode == UP){
        port.write('U');
      }
      
      if (keyCode == DOWN){
        port.write('D');
      }
      
      if (key == 'A'|| key=='a'){
        port.write('A');
      }
      
      if (key == 'S'|| key=='s'){// && keyCode != LEFT) 
        //println('S');
        port.write('S');
      }
      
      if (key == 'X'|| key=='x'){// && keyCode != 'S') {
        //println('X');
        port.write('X');
      }
      
      if (key == 'Z' || key=='z'){// && keyCode != LEFT) 
      // println('Z');
        port.write('Z');
      }
      delay(100);
      
    }    
}

}
  
