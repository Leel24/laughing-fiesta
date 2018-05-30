Launch l = new Launch ();
Ball b = new Ball(150,450,10);
Terrain t = new Terrain();
Menu m = new Menu();

  //higher velMod means lower launch velocity
  float velMod = 20;
  Obstacles[] z = new Obstacles[1];

void setup(){
  size(1000,600);
  l.setLaunchStartX(b.getX());
  l.setLaunchStartY(b.getY());
  l.setLaunchEndX(b.getX());
  l.setLaunchEndY(b.getY());
  for (int i=0; i<z.length; i++){
   z[i] = new Obstacles((int)(Math.random()*500+250),(int)(Math.random()*400+100),(int)(Math.random()*100+30)); 
  }
}

void draw(){
  if (!m.getStartMenuActive()){
    background(50);
    t.goal(800,400);
    l.drawGuide();
    for(int i=0; i<z.length; i++){
      z[i].drawObstacles();
    }
       
     b.checkCollision(z[0]);
    
    b.move();
    m.displayGameMenu();
    b.checkWallCollision();
    if (mousePressed){
      l.setLaunched(true);
      b.setVel(new PVector((l.getLaunchEndX()-l.getLaunchStartX())/velMod, (l.getLaunchEndY()-l.getLaunchStartY())/velMod));
    }
  }
  else {
    m.displayStartMenu();
  }
}

void mouseMoved(){
  l.setLaunchEndX(l.getLaunchStartX()-mouseX);
  l.setLaunchEndY(l.getLaunchStartY()-mouseY);
}

void mouseClicked(){
  if (!m.getStartMenuActive()){
    //l.setLaunched(true);
    //b.setVel(new PVector((l.getLaunchEndX()-l.getLaunchStartX())/velMod, (l.getLaunchEndY()-l.getLaunchStartY())/velMod));
  }
  else {
    //300,200,400,140
    if (mouseX>300 && mouseX<700 && mouseY>200 && mouseY<340){
      m.toggleStartMenuActive();
      m.toggleGameActive();
    }
      
  }

}
