#include <Servo.h> // Using servo library disables PWM funcionality on pins 9 and 10
#define SERVO1 3 // Pin 3 PWM
#define SERVO2 5 // Pin 5 PWM
#define SERVO3 6 // Pin 6 PWM
#define SERVO4 11 // Pin 11 PWM

Servo sbase;
Servo svert;
Servo shoriz;
Servo shand;

int wait = 1000;
int inputArray[50];
int i = 0;
int x = 0;
int incomingValue = 0;  

void setup() {
  sbase.attach(SERVO1);
  svert.attach(SERVO2);
  shoriz.attach(SERVO3);
  shand.attach(SERVO4);
  Serial.begin(9600);
}

void loop() {
        if (Serial.available() > 0) {               
                // read the incoming value:
                incomingValue = Serial.read();
                inputArray[i] = incomingValue;
                i++;
                if (incomingValue == 300){ // if the computer sends 300, it means we have reached the end of the package
                  x = 1; 
                }
              }
        if (x == 1){           // each action has 7 parameters, so we will send to the function move 7 parameters at a time
          moveRobot(inputArray[0],  inputArray[1], inputArray[2], inputArray[3], inputArray[4], inputArray[5], inputArray[6]);
          moveRobot(inputArray[7],  inputArray[8], inputArray[9], inputArray[10], inputArray[11], inputArray[12], inputArray[13]);
          moveRobot(inputArray[14], inputArray[15], inputArray[16], inputArray[17], inputArray[18], inputArray[19], inputArray[20]);
          moveRobot(inputArray[21], inputArray[22], inputArray[23], inputArray[24], inputArray[25], inputArray[26], inputArray[27]);
          moveRobot(inputArray[28], inputArray[29], inputArray[30], inputArray[31], inputArray[32], inputArray[33], inputArray[34]);
          moveRobot(inputArray[35], inputArray[36], inputArray[37], inputArray[38], inputArray[39], inputArray[40], inputArray[41]);
          moveRobot(inputArray[42], inputArray[43], inputArray[44], inputArray[45], inputArray[46], inputArray[47], inputArray[48]);
          x=0;
          i=0;
        }
}

/*
Notes from 2021: 
Explicitly writing every position in the array is a bad coding technique.
- Should read serial value in a loop until incomingValue different from 300. 
- After that, pass the parameters to move function in batches of 7 until the end of the input array. 
*/

void moveRobot (int a, int b, int c, int d, int e, int f, int g){ 
  if ( a == 0){
    shand.write(120);   //if no action is required, stay in initial position
    delay(wait);
    svert.write(120);
    delay(wait);
    shoriz.write(90);
    delay(wait);
    sbase.write(90);
    delay(wait);
  }
  else {
    sbase.write(90);      //go to initial position
    svert.write(120);       
    shoriz.write(90);
    shand.write(120);     
    delay(wait);
    
    sbase.write(a); // first part of the action
    delay(wait);
    shoriz.write(b);
    delay(wait);
    svert.write(c);
    delay(wait);
    shand.write(d);
    delay(wait);
    svert.write(120);
    delay(wait);
    shoriz.write(90);
    delay(wait);
    sbase.write(90);
    delay(wait); 

    sbase.write(e);   // second part of the action - drop disk
    delay(wait);
    shoriz.write(f); 
    delay(wait);
    svert.write(g);
    delay(wait);
    shand.write(120);   //open hand
    delay(wait);
    svert.write(120);
    delay(wait);
    shoriz.write(90);
    delay(wait);
    sbase.write(90);
    delay(wait);
  }
      
}

