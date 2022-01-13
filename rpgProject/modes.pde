void startMenu(){
  g.show();
  button.show();
}
void game(){
    currentRoom.drawRoom();
    drawObjects();
   drawDarkness();
   currentRoom.checkRoom();
   drawMap();
}
void pause(){
  drawPauseMenu();
  drawPauseMenuButtons();
  pauseMenuButtonInteractions();
}
void end(){
  drawEndingScreen();
}
