class DarknessCell{
 
  float opacity;
  float x,y,size;
  
  DarknessCell(float X,float Y, float S){
     size = S;
     x= X;
     y=Y;
     opacity=0;
  }
  void show(){
    rectMode(CENTER);
      opacity = dist(myCharacter.loc.x,myCharacter.loc.y,x,y)/2;
      if(opacity>225)opacity = 225;
      fill(0,0,0,opacity);
      rect(x,y,size,size);
  }
}

void drawDarkness(){
  noStroke();
    int i=0;
  while(i<darkness.size()){
     darkness.get(i).show();   
     i++;
  }
}

void initializeDarkness(){
  float size = 8;
  darkness = new ArrayList<DarknessCell>();
  float x = 0;
  float y =0;
 while(x<=width && y<=height){
    darkness.add(new DarknessCell(x,y,size)); 
    x+=size;
    if(x>=width){
      y+=size;
      x=0;
    }
 }
}
