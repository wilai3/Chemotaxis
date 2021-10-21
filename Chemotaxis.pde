class Walker {
  int myX, myY, starColor;
  Walker(){
    myX = (int)(Math.random()*750);
    myY = (int)(Math.random()*750);
    starColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  }
  void walk() {
    myX = myX + (int)(Math.random()*7)-3;
    myY = myY + (int)(Math.random()*7)-3;
  }
  void show(){
    fill(starColor);
    noStroke();
    ellipse(myX, myY, 25, 25);
    triangle(myX-12,myY,myX+12,myY,myX,myY-30);
    triangle(myX,myY-12,myX,myY+12,myX+30,myY);
    triangle(myX-5,myY+12,myX,myY,myX+20,myY+30);
    triangle(myX+5,myY+6,myX-5,myY,myX-25,myY+30);
    triangle(myX,myY-12,myX,myY+12,myX-30,myY);
    
  }
}

Walker [] bob = new Walker[25];

void setup(){
  size(750,750);
  background(0);
  for (int i = 0; i < bob.length; i++) {
    bob[i] = new Walker();
  }
}

void draw(){
  background(0);
  int j = 0;
  while (j < bob.length){
    bob[j].walk();
    bob[j].show();
    j++;
  }
}
