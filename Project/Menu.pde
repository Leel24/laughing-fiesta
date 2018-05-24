class Menu{
  
  boolean startMenuActive = true, gameActive = false, victory = false;
  
  Menu(){
  }
  
  boolean getStartMenuActive(){
    return startMenuActive;
  }
  
  void toggleStartMenuActive(){
    startMenuActive = !startMenuActive;
  }
  
  void toggleGameActive(){
    gameActive = !gameActive;
  }
  
  void displayStartMenu(){
    background(0,100,60);
    //color of buttons
    fill(180);
    stroke(180);
    //start button
    rect(300,200,400,140);
    
    //options button
    rect(360,380,280,60);
    
    //text
    fill(255);
    textSize(70);
    text("Start",415,295);
    textSize(40);
    text("Options",422,425);
    
  }
  
  void displayGameMenu(){
    fill(0);
    stroke(0);
    rect(920,30,60,40);
    textSize(18);
    fill(255);
    text("Reset",925,55);
  }
  
  
}
