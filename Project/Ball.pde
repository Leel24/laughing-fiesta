class Ball implements Collidable{
 
  int XPos, YPos, size;
  PVector position = new PVector(), velocity = new PVector();
 
  Ball(){
  XPos=150;
  YPos=750;
  size=20;
  }
 
  int getX(){
  return XPos;
  }
 
  int getY(){
  return YPos;
  }
 
  void move(){
  fill(255);
  stroke(255);
  ellipse(XPos,YPos,size,size);
  position.add(velocity);
  //velocity.add(g);
  }
  
  boolean checkWallCollision(){
  //if x+/-20 or y+/-20 is at edge, return true
  return false;
  }
  
  boolean checkCollision(){
  return false;
  }
 
  void bounce(){
  
  }
 
}
