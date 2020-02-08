class block {
  float bX;
  float bY;
  float bXR;
  float bYR;
  float bSide;
  float bSpeed;
  boolean exploded;
  block() {
    bX=300;
    bY=300;
    bSide=40;
    bXR=bX+bSide;
    bYR=bY+bSide;
    bSpeed=0;
    exploded=false;
  }
  void display() {
    fill(100,120,72);
    rect(bX,bY,bSide,bSide);
  }
    void bounce(){
    bSpeed=0.1;
   bY=bY+bSpeed; 
    if(bSpeed==0.5){
      bSpeed=-bSpeed; 
    } 
    if(bSpeed==-0.5){
     bSpeed=0; 
    }
  }


  void collide(character c) {
    
  }
}
