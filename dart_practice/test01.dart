import "dart:math";
import "dart:io";
void main() {
  int a=5;
  int b=3;
  int c=0;
  c=(a/b).round();// dart 整数除整数不会自己动去精度
  print(min(b,c));
  print(sqrt(b));
  print(a<b); // a is larger, so print false

  print("what is your name? :");
  String? username = stdin.readLineSync();
  print("got ${username}");
}