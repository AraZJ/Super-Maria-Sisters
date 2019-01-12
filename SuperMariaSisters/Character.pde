class character {
  PImage charImage=loadImage("MariaImage2.png");
  float cWidth;
  float cHeight;
  float cX;
  float cY;
  float cSpeed;
  boolean falling;
  boolean forwardFacing;
  character() {
    cWidth=40;
    cHeight=90;
    cX=450;
    cY=height-height/4-cHeight;
    cSpeed=3;
    forwardFacing=true;
    falling=false;
  }
  void display() {
    if (forwardFacing) {
      image(charImage, cX, cY, cWidth, cHeight);
    } else if (!forwardFacing) {
      pushMatrix();
      translate(cX+cWidth, cY);
      scale(-1, 1); // You had it right!
      image(charImage, 0, 0, cWidth, cHeight);
      popMatrix();
    }
  }
  void move() {
    if (keyCode==RIGHT) {
      forwardFacing=true;
      cX=cX+cSpeed;
      if (cX>=width/3) {
        forward=true;
      }
    }
    if (keyCode==LEFT) {
      forwardFacing=false;
      cX=cX-cSpeed;
    }


    //if (keyPressed&&keyCode==RIGHT) {

    //}
  }
  void jump() {
    if(cY>=300){
    cY=cY-2;
    } 
    if(cY==300){
      falling=true;
    }
  }
  void fall() {

    if (falling&&cY<=height-height/4-cHeight) {

      cY=cY+1;
      // cY=cY-10;
    }
  }
}
