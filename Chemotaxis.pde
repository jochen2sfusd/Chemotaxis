Bacteria[] bob;
void setup() {
  size(500,500);
  bob = new Bacteria[10];
  for(int i =0; i < bob.length; i++) {
    bob[i] = new Bacteria();
  }
}
void draw() {
  fill(100);
  background(250,250,250);
  ellipse(250,75,450,125);
  ellipse(250,425,450,125);
  stroke(100);
  strokeWeight(3);
  line(475,75,475,425);
  line(25,75,25,425);
  for(int i = 0; i < bob.length; i++) {
    bob[i].show();
    bob[i].walk();
  }
}
class Bacteria {
   int myX, myY, myCol;
   Bacteria() {
     myX = (int)(Math.random()*200+125);
     myY = (int)(Math.random()*200+125);
     myCol = 200;
  }
  void walk() {
    if(myX < 25)
      myX += 10;
    else if(myX > 475)
      myX -= 10;
    if(myY < 75)
      myY += 10;
    else if(myY > 425)
      myY -= 10;
    if(mouseX > myX)
      myX = myX + (int)(Math.random()*5)-1;
    else
      myX = myX + (int)(Math.random()*5)-3;
    if(mouseY > myY)
      myY = myY + (int)(Math.random()*5)-1;
    else
      myY = myY + (int)(Math.random()*5)-3;
  }
  void show()
  {
    noStroke();
    fill(0, myCol, 0);
    ellipse(myX,myY,10,10);
  }
}
