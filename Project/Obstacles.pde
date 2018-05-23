class Obstacles implements Collidable{
 
  Obstacles(){
  
  }
 
  void drawObstacles(){
  rect(400,500,100,100);
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
