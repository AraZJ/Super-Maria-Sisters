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
  
  if(keyCode==UP){
  Maria.jump();
  }
  Maria.fall();
  println(Maria.falling);
}
void keyPressed(){
  Maria.move(); 
}
