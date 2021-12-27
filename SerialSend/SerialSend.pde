import processing.serial.*;

Serial port;

void setup() {
  
  size(300,300);
  
  print("Hey There!");
  print("Hit Left or Right Key to Move your motor!");
  
  print(Serial.list());
  
  port = new Serial(this, Serial.list()[/*port number*/], 9600);
}

void draw(){
  
  if(keyPressed) {
      
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
        
        if (key == 'S'|| key=='s'){
          port.write('S');
        }
        
        if (key == 'X'|| key=='x'){
          port.write('X');
        }
        
        if (key == 'Z' || key=='z'){
          port.write('Z');
        }
        
        delay(100);
       
     } // if(keyPressed)   
     
} // void draw()
  
