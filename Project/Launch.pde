public class Launch{
 
  int launchStartX, launchStartY, launchEndX, launchEndY;
  boolean launched = false;
 
  Launch(){
   
  }
 
  void setLaunchStartX(int a){
    launchStartX = a;
  }
 
  void setLaunchStartY(int a){
    launchStartY = a;
  }
 
  int getLaunchStartX(){
    return launchStartX;
  }
 
  int getLaunchStartY(){
    return launchStartY;
  }
 
  void setLaunchEndX(int a){
    launchEndX = a+launchStartX;
  }
 
  void setLaunchEndY(int a){
    launchEndY = a+launchStartY;
  }
 
  int getLaunchEndX(){
    return launchEndX;
  }
 
  int getLaunchEndY(){
    return launchEndY;
  }
  
  void setLaunched(boolean a){
    launched = a;
  }
  
  boolean getLaunched(){
    return launched;
  }
  
  float go(){
    
    return 0.0;
  }
 
  //draws guide for direction/magnitude of ball
  void drawGuide(){
    // if (!leftclickhasoccured)
    line(l.getLaunchStartX(),l.getLaunchStartY(),l.getLaunchEndX(),l.getLaunchEndY());
  }
 
}
