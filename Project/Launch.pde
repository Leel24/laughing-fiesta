public class Launch{
 
  PVector launchStart = new PVector(), launchEnd = new PVector();
  boolean launched = false;
 
  Launch(){
   
  }
 
  void setLaunchStartX(int a){
    launchStart.x = a;
  }
 
  void setLaunchStartY(int a){
    launchStart.y = a;
  }
 
  int getLaunchStartX(){
    return (int)launchStart.x;
  }
 
  int getLaunchStartY(){
    return (int)launchStart.y;
  }
 
  void setLaunchEndX(int a){
    launchEnd.x = launchStart.x + a;
  }
 
  void setLaunchEndY(int a){
    launchEnd.y = launchStart.y + a;
  }
 
  int getLaunchEndX(){
    return (int)launchEnd.x;
  }
 
  int getLaunchEndY(){
    return (int)launchEnd.y;
  }
  
  void setLaunched(boolean a){
    launched = a;
  }
  
  //returns whether ball has been launched
  boolean getLaunched(){
    return launched;
  }
 
  //draws guide for direction/magnitude of ball
  void drawGuide(){
    if (!launched){
      line(launchStart.x,launchStart.y,launchEnd.x,launchEnd.y);
    }
    //after clicking, sets velocity to (x,y) of position clicked
    else {
     l.setLaunchEndX(pmouseX); 
     l.setLaunchEndY(pmouseY);
    } 
  }
 
}
