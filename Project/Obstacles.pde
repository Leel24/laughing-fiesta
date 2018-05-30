class Obstacles implements Collidable{
 
  int obx, oby, w;
  
  Obstacles(int a, int b, int c){
    obx = a;
    oby = b;
    w = c;
  }
  
  PVector getPos(){
    return new PVector(obx, oby);
  }
  
  int getSize(){
   return w;
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
