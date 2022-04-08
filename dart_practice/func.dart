import "dart:math";
import "dart:io";
void main() {
  drawTri();
  sayHi("Mike",26);
  print(addNumbers(99.8,660)) ;

  String color =prompt("enter a color");
  print("The color is $color");
}
void drawTri(){
  print(" /|");
  print("/ |");
}
void sayHi(String username, int age){
  print("Hi $username, you are $age!");
}
double addNumbers(double a, double b){
  return a+b;
}
String prompt(String promptText){
  print(promptText);
  String? answer = stdin.readLineSync();
  return answer!;
}