// Example: Two Car objects
Car myCar1;
Car myCar2; // Two objects!
 
void setup() {
  size(200,200);
  // Parameters go inside the parentheses when the object is constructed.
 
  myCar1 = new Car(color(255,0,0),0,100,2); 
  myCar2 = new Car(color(0,0,255),0,130,-1);
   
}
 
void draw() {
  background(0,255,0);
  noStroke();
   fill(200);
    rect(100,115,200,70);
    fill(255);
    
    rect(20,115,10,3);
    rect(40,115,10,3);
    rect(60,115,10,3);
    rect(80,115,10,3);
    rect(100,115,10,3);
    rect(120,115,10,3);
    rect(140,115,10,3);
    rect(160,115,10,3);
    rect(180,115,10,3);
  myCar1.drive();
  myCar1.display();
  myCar2.drive();
  myCar2.display();

}
 
// Even though there are multiple objects, we still only need one class. 
// No matter how many cookies we make, only one cookie cutter is needed.
class Car { 
  color c;
  float xpos;
  float ypos;
  float xspeed;
 
  // The Constructor is defined with arguments.
  Car(color tempC, float tempXpos, float tempYpos, float tempXspeed) { 
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }
 
  void display() {
    stroke(0);
    fill(c);
    rectMode(CENTER);
    rect(xpos,ypos,20,10);
  }
 
  void drive() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
    if(xpos<0){
      xpos=200;
    }
  }
  
}