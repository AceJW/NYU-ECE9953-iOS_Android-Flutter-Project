import "dart:math";
import "dart:io";
void main() {
  print("enter a color: ");
  String? color = stdin.readLineSync();

  print("enter a plural noun: ");
  String? pluralNoun = stdin.readLineSync();

   print("enter a celebrity: ");
  String? celebrity = stdin.readLineSync();
  
  print("Rosesare $color");
  print("$pluralNoun are blue");
  print("I love $celebrity");
}