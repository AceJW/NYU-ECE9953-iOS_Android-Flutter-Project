import "dart:math";
import "dart:io";
void main() { 
  print("enter first number:");
  double num1 = double.parse(stdin.readLineSync()!);
  double num2=promptDouble(); 
  double num3=promptDouble();
  String op = prompt("Enter a operation (+,-,*,/): ");
  
  if(op == '+'){
    print(num2+num3);
  }else if(op == '-'){
    print(num2-num3);
  }else if(op == '/'){
    print(num2/num3);
  }else if(op == '*'){
    print(num2*num3);
  }else{
    print('error occurs');
  }

  switch(op){
    case '+':
      print(num2+num3);
      break;
    case '-':
      print(num2-num3);
      break;
    case '/':
      print(num2/num3);
      break;
    case '*':
      print(num2*num3);
      break;
    default:
      print("invalid operator");
  }
}
String prompt(String promptText){
  print("The prompt is: $promptText");
  String? answer = stdin.readLineSync();
  return answer!;
}
double promptDouble(){
  print("enter a number: ");
  double num=double.parse(stdin.readLineSync()!);
  return num;
}