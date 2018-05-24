class Obstacles implements Collidable{
 
  int obx, oby, w, h;
  
  Obstacles(int a, int b, int c, int d){
    obx = a;
    oby = b;
    w = c;
    h = d;
  }
  
  Obstacles(int a, int b, int c){
    obx = a;
    oby = b;
    w = c;
  }
 
  void drawObstacles(){
    stroke(255,0,0);
    ellipse(obx, oby, w, w);
  }
 
  boolean checkWallCollision(){
    return false;
  }
 
  boolean checkCollision(){
    return false;
  }
 
  void bounce(){
  
  }
 
}
