PictPaint pict;


import ddf.minim.*; 


Minim minim;

AudioPlayer song;

void setup() 
{ 
  minim = new Minim(this);
  song = minim.loadFile("Friends.mp3", 2048);

  song.loop();
   minim.loadFile("Friends.mp3");

  fullScreen(); 
  pict = new PictPaint();
  background(255);
} 

void draw() 
{ 
  pict.Draw();
 
} 