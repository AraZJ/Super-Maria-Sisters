character Maria;
boolean forward;
float groundTop;
block aBlock;
void setup() {
  size(900, 600);
  background(0, 200, 250);
   groundTop=height-height/4; //450
   aBlock=new block();
  Maria=new character();
  
  fill(0, 200, 0);
  noStroke();
  rect(0, groundTop, width, groundTop);
 
}
void draw() {
  background(0, 200, 250);
  fill(0, 200, 0);
  noStroke();
  rect(0, groundTop, width, groundTop); 
  if(mousePressed){
 aBlock.bX=mouseX;
 aBlock.bY=mouseY;
  }
   aBlock.display();
  Maria.display();
  Maria.fall();
  //println(Maria.jumping);
}
void keyPressed() {
  if (keyCode==UP) {
    Maria.jump();
  }
  Maria.move();
}
