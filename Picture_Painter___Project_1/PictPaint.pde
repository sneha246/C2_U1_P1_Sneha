class PictPaint 
{  

  PImage img;
  //PImage img1; 
  //PImage img2; 
  //PImage img3; 
  PImage img4; 

  int value = 0;


  String img4File = "italy.JPG";
  String imgFile = "brushstroke.png";
  //String img1File = "starrynight.jpg";
  //String img2File = "plane.JPG";
  //String img3File = "donut.jpg";

  //int size= 2; 

  int xPick; 
  int yPick; 

  int Xpick; 
  int Ypick; 

  int xpick; 
  int ypick;

  int y;

  PictPaint() 
  { 
    img4 = loadImage(img4File); 
    img = loadImage(imgFile); 
    //img1 = loadImage(img1File); 
    //img2 = loadImage(img2File); 
    //img3 = loadImage(img3File); 

    image(img4, 0, 0); 
    image(img, 0, 0); 
    //image(img1, 0, 0); 
    //image(img2, 0, 0); 
    //image(img3, 0, 0); 

    noStroke();  // how thick it is 
    noFill();

    img4.resize(width, height);
    //img1.resize(width, height);
    //img2.resize(width, height);
    // img3.resize(width, height);
    img.resize(10, y);
    
    keyReleased(); 
  }

  void Draw()
  {
    for (int i = 0; i < 50; i++) 
    { 
      DrawShape();
    }
  }


  void DrawShape()
  {
    int xPick = (int)random(width); 
    int yPick = (int)random(height); 



    color tCol4 = img4.get(xPick, yPick);  
    fill(tCol4);

    //color tCol = img.get(xpick, ypick);

    tint(tCol4); 


    //ellipse(Xpick, Ypick, 20, 20);
    //triangle(xPick, yPick - 7, xPick - 7, yPick + 7, xPick + 7, yPick + 7);

    //pick color save to tCol4

    imageMode(CENTER); 

    pushMatrix();
    translate(xPick, yPick); 
    rotate(PI/random(2));
    image(img, 0, 0);
    popMatrix();
  }

  void keyReleased() 
  {
    if (key == 'A');
    {
     y = 10; 
    }
    
    if (key == 'B');
    {
     y = 25; 
    }
  }
}