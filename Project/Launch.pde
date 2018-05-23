public class Launch{
 
  int launchStartX, launchStartY, launchEndX, launchEndY;
 
  Launch(){
   launchStartX = 150;
   launchStartY = 750;
   launchEndX = 150;
   launchEndY = 750;
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
  launchEndX = a+170;
  }
 
  void setLaunchEndY(int a){
  launchEndY = a+735;
  }
 
  int getLaunchEndX(){
  return launchEndX;
  }
 
  int getLaunchEndY(){
  return launchEndY;
  }
 
  //draws guide for direction/magnitude of ball
  void drawVector(){
  line(l.getLaunchStartX(),l.getLaunchStartY(),l.getLaunchEndX(),l.getLaunchEndY());
  }
 
}
