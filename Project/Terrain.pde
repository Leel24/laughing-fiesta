public class Terrain{
 
  PVector goal;
 
  Terrain(){
  }
  
  void goal(int x, int y){
    noFill();
    stroke(0,255,0);
    strokeWeight(3);
    arc(x,y,60,45,0,PI);
    goal = new PVector(x,y);
  }
  
  PVector getGoal(){
    return goal;
  }
  
  void goalHit(){
    
  }
 
}
