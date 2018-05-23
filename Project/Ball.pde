class Ball implements Collidable{
 
  int XPos, YPos, size;
  PVector position = new PVector(), velocity = new PVector();
 
  Ball(int s){
    XPos=width;
    YPos=height;
    size=s;
  }
  
  Ball(int x,int y,int s){
    XPos=x;
    YPos=y;
    size=s;
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
    //if x+/-size or y+/-size is at edge, return true
    return false;
  }
  
  boolean checkCollision(){
    return false;
  }
 
  void bounce(){
  
  }
 
}
