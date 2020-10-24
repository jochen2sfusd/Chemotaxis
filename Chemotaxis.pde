Bacteria[] bob;
void setup() {
  size(400,400);
  bob = new Bacteria[10];
  for(int i =0; i < bob.length; i++) {
    bob[i] = new Bacteria();
  }
}
void draw() {
  fill(255,200,0);
  background(250,250,250);
  ellipse(200,200,460,460);
  stroke(200);
  strokeWeight(100);
  line(150,150,250,150);
  line(150,150,150,250);
  line(250,250,150,250);
  line(250,250,250,150);
  for(int i = 0; i < bob.length; i++) {
    bob[i].show();
    bob[i].walk();
  }
}
class Bacteria {
   int myX, myY, myCol;
   Bacteria() {
     myX = (int)(Math.random()*100+150);
     myY = (int)(Math.random()*100+150);
     myCol = 200;
  }
  void walk() {
    if(myX < 150)
      myX += 5;
    else if(myX > 250)
      myX -= 5;
    if(myY < 150)
      myY += 5;
    else if(myY > 250)
      myY -= 5;
    if(mouseX > myX)
      myX = myX + (int)(Math.random()*5)-1;
    else
      myX = myX + (int)(Math.random()*5)-3;
    if(mouseY > myY)
      myY = myY + (int)(Math.random()*5)-1;
    else
      myY = myY + (int)(Math.random()*5)-3;
  }
  void show() {
    fill(0, myCol, 0);
    ellipse(myX,myY,10,10);
  }
}
