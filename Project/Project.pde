Launch l = new Launch ();
Ball b = new Ball(100,500,10);
Terrain t = new Terrain();
Obstacles o = new Obstacles();

void setup(){
  size(800,600);
  l.setLaunchStartX(b.getX());
  l.setLaunchStartY(b.getY());
}

void draw(){
  background(50);
  t.goal(500,300);
  l.drawGuide();
  b.move();
  o.drawObstacles();
}

void mouseMoved(){
  l.setLaunchEndX(l.getLaunchStartX()-mouseX);
  l.setLaunchEndY(l.getLaunchStartY()-mouseY);
}

void mouseClicked(){
  l.setLaunched(true);
}
