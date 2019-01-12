class block {
  float bX;
  float bY;
  float bSide;
  boolean exploded;
  block() {
    bX=300;
    bY=300;
    bSide=40;
    exploded=false;
  }
  void display() {
    fill(100,120,72);
    rect(bX,bY,bSide,bSide);
  }

  void collide(character c) {
  }
}
