character Maria;
boolean forward;
void setup(){
  size(900,600);
  background(0,200,250);
  Maria=new character();
  fill(0,200,0);
  noStroke();
  rect(0,height-height/4,width,height-height/4);  
}
void draw(){
    background(0,200,250);
  fill(0,200,0);
  noStroke();
  rect(0,height-height/4,width,height-height/4);  
  Maria.display();
  Maria.fall();
  //println(Maria.jumping);
}
void keyPressed(){
  Maria.move();
  if(keyCode==UP){
  Maria.jump();
  }
}
