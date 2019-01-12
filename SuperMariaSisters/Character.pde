class character {
  PImage charImage=loadImage("MariaImage2.png");
  float cWidth;
  float cHeight;
  float cX;
  float cY;
  float cSpeed;
  float cSpeedY;
  boolean jumping;
  boolean forwardFacing;
  character() {
    cWidth=40;
    cHeight=90;
    cX=450;
    cY=100;//height-height/4-cHeight;
    cSpeed=5;
    cSpeedY=0;
    forwardFacing=true;
    jumping=false;
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
  }
  void jump() {
    jumping=true;
   cSpeedY=-10;
  }
  void fall() {
    if(cY<height-height/4-cHeight){
      cSpeedY=cSpeedY+.2;
    } else if(!jumping&&cY>height-height/4-cHeight){
      cSpeedY=0;
    }
      cY=cY+cSpeedY;
        if(cY>=300){
     jumping=false;
   }
  }
}
