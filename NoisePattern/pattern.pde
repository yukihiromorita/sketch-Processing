float pattern(float x, float y,float t){
  
   float noisex =  x + 4.0 * noise( x + 0.0, y + 0.0 , t) ; 
   float noisey =  y + 4.0 * noise( x + 5.2, y + 1.3 , t) ;
    
   //float noisex2 = x + 4.0 * noisex;
   //float noisey2 = y + 4.0 * noisey;
   
   float noisex3 = x + 4.0 * noise(noisex + 1.7 , noisey + 9.2);
   float noisey3 = y + 4.0 * noise(noisex + 8.3 , noisey + 2.8);
   
   return noise(noisex3,noisey3);
   
}

float pattern(float x, float y){
  
   float noisex =  noise( x + 0.0, y + 0.0 ) ; 
   float noisey =  noise( x + 5.2, y + 1.3 ) ;
  
  return noise(x + 4.0 * noisex,y + 4.0 * noisey);
  
}