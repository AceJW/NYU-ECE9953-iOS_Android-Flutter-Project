import "dart:math";
import "dart:io";
void main() {
  print("enter a:");
  int? a = int.parse(stdin.readLineSync()!);
  print("enter b:");
  String? b = stdin.readLineSync();
  
  print(a+int.parse(b!));
}