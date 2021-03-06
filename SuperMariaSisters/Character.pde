class character {
  PImage charImage=loadImage("MariaImage2.png");
  float cWidth;
  float cHeight;
  float cX;
  float cY;
  float cXR;
  float cYR;
  float cSpeedX;
  float cSpeedY;
  boolean jumping;
  boolean forwardFacing;
    character() {
      cWidth=40;
      cHeight=90;
      cX=450;
      cY=groundTop-cHeight;
     cXR=cX+cWidth;
     cYR=cY+cHeight;
      cSpeedX=5;
      cSpeedY=0;
      forwardFacing=true;
      //jumping=false;
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
      cX=cX+cSpeedX;
      if (cX>=width/3) {
        forward=true;
      }
    }
    if (keyCode==LEFT) {
      forwardFacing=false;
      cX=cX-cSpeedX;
    }
  }
  void jump() {
    if(cSpeedY==0){ //added this, seems to work
    jumping=true;
   cSpeedY=-10;
   cSpeedX=10;
    }
  }
  void fall() {
    if(cY<=groundTop-cHeight){ //my previous problem where she fell through the floor partway was because it was < and not <=!
      cSpeedY=cSpeedY+.2;
    } else if(!jumping&&cY>groundTop-cHeight){
      cSpeedY=0;
    }
      cY=cY+cSpeedY;
        if(cY>=300){
     jumping=false;
   }
  }
}
