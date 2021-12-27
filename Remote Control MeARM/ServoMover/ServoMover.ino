#include <Servo.h>

Servo Right, Claw, Middle, Left;

char incomingByte;
int MyPosition1 = 50;
int MyPosition2 = 25;
int MyPosition3 = 90;
int MyPosition4 = 90;

void setup() {
  Right.attach(10);
  Claw.attach(6);
  Middle.attach(11);
  Left.attach(9);
  Right.write(MyPosition1);
  Claw.write(MyPosition2);
  Middle.write(MyPosition3);
  Left.write(MyPosition4);
  
  Serial.begin(9600);
}

void loop() {
  
  
  if (Serial.available() > 0) {
    

    
    incomingByte = Serial.read();
    
    if(incomingByte == 'L') {
      MyPosition1 = MyPosition1 + 2;
      Right.write(MyPosition1);
      Serial.flush();
    }
    
    else if(incomingByte == 'U') {
      MyPosition2 = MyPosition2 + 2;
      Claw.write(MyPosition2);
      Serial.flush();
    }
    
     else if(incomingByte == 'Z') {
      MyPosition3 = MyPosition3 + 2;
      Middle.write(MyPosition3);
      Serial.flush();
    }
    
     else if(incomingByte == 'A') {
      MyPosition4 = MyPosition4 + 2;
      Left.write(MyPosition4);
      Serial.flush();
    }
      
    else if(incomingByte == 'R') {
      MyPosition1 = MyPosition1 - 2;
      Right.write(MyPosition1);
      Serial.flush();
    }
    
    else if(incomingByte == 'D') {
      MyPosition2 = MyPosition2 - 2;
      Claw.write(MyPosition2);
      Serial.flush();
    }
    
    else if(incomingByte == 'X') {
      MyPosition3 = MyPosition3 - 2;
      Middle.write(MyPosition3);
      Serial.flush();
    }
    else if(incomingByte == 'S') {
      MyPosition4 = MyPosition4 - 2;
      Left.write(MyPosition4);
      Serial.flush();
    }
  
    delay(100);
    Serial.flush();
  }
}


        
