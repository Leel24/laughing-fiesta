class Ball implements Collidable{
 
  int size;
  PVector position, velocity = new PVector(0,0), g = new PVector(0,0.08);
 
  Ball(int x,int y,int s){
    position = new PVector(x,y);
    size=s;
  }
 
  int getX(){
    return (int)position.x;
  }
 
  int getY(){
    return (int)position.y;
  }
  
  void setVel(PVector a){
    velocity = a; 
  }
  
  PVector getVel(){
    return velocity;
  }
 
  //before clicking, ball stays in place because velocity = (0,0)
  //after clicking, ball launches with intial velocity and begins parabolic motion with g
  void move(){
    fill(255);
    stroke(255);
    ellipse(position.x,position.y,size,size);
    if (l.getLaunched()){
      position.add(velocity);
      velocity.add(g);
    }
    
    
    
  }
  
  void checkWallCollision(){
    if (position.x-size<0 || position.x+size>1000){
      velocity.x *= -1;
    }
    if (position.y-size<0 || position.y-size>600){
      velocity.y *= -1;
    }
  }
  
  void checkCollision(){
    
  }
 
}
