public class Terrain{
 
  int hills=20, height=100;
 
  Terrain(){
  }
 
  void goal(){
  noFill();
  stroke(255,0,0);
  strokeWeight(3);
  arc(1000,500,55,40,0,PI);
  }
 
  void obstacles(){
  //randomly generates collidable objects (based on difficulty level??)
  }
 
}
