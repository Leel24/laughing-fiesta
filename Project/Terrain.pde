public class Terrain{
 
  int hills=20, height=100;
 
  Terrain(){
  }
  
  void goal(int x, int y){
    noFill();
    stroke(255,0,0);
    strokeWeight(3);
    arc(x,y,40,35,0,PI);
  }
 
}
