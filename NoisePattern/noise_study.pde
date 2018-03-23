float count=0;

void pixelNoise() {
  loadPixels();

  for (float y=0; y<height; y++) {
    for (float x=0; x<width; x++) {            
      //int red   = int(1.0 *255*noise(x*0.01, y*0.01, count)); 
      //int green = int(1.0 *255*noise(x*0.01, y*0.01, count));
      //int blue  = int(1.0 *255*noise(x*0.01, y*0.01, count));
      int red   = int(1.0 *255*pattern(x*0.01,y*0.01,count)); 
      int green = int(1.0 *255*pattern(x*0.02,y*0.01,count));
      int blue  = int(1.0 *255*pattern(x*0.01,y*0.03,count));

      pixels[int(y*width + x) ] = color( red, green, blue );
      //pixels[int(y*width + x) ] = color( int(255*pattern(x*0.01,y*0.01,count)) );
      //pixels[int(y*width + x) ] = color( int(255*pattern(x*0.04,y*0.04 )) );
    }
  }
  
  count += 0.01;
  updatePixels();
}

void setup() {
  size(512, 512);

  pixelNoise();
}

void draw() {
  pixelNoise();

  println(frameRate);
  
}

void keyPressed() {
  if (key=='s') save(str(count)+".png");
}