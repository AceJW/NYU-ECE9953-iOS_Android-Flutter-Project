import "dart:math";
import "dart:io";
void main() { 
  drawTri(5);
}

void drawTri(int numOfTri){
  for(int n=0;n<numOfTri;n++){
    stdout.write("/|");
  }
}