Launch l = new Launch ();
Ball b = new Ball();
Terrain t = new Terrain();
Obstacles o = new Obstacles();
void setup(){
  size(1400,900);
 
}
void draw(){
  background(50);
  t.goal();
  l.drawVector();
  b.move();
  o.drawObstacles();
}

void mouseMoved(){
  l.setLaunchEndX(l.getLaunchStartX()-mouseX);
  l.setLaunchEndY(l.getLaunchStartY()-mouseY);
}
