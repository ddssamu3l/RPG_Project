void drawMap(){
 //image(mapImage,100,100,125,125);
 noStroke();
 int x = 50;
  int y =50;
  int mx  = 0;
  int my = 0;
 while(my<=mapImage.height-1){
    color c = mapImage.get(mx,my);
    fill(c);
    if(mapX == mx && mapY == my) // MARKS THE CURRENT LOCATION OF THE CHARACTER IN THE MAP
      fill(yellow);
    square(x,y,10);
    x+=10;
    mx+=1;
    if(mx>=mapImage.width){
      mx=0;
      y+=10;
      x=50;
      my++;
    }
 }
}
