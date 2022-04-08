import "dart:math";
import "dart:io";

import 'func.dart';

class MathQuestion {
  String question="";
  double answer=0;
  MathQuestion(String question, double answer){
    this.question = question;
    this.answer = answer;
  }
}

void main(){

  List<MathQuestion> questions = [
    MathQuestion("3+4=?",7),
    MathQuestion("3*2=?",6),
    MathQuestion("9/3=?",3)
  ];
  
  for(MathQuestion mathQuestion in questions){
    double userAnwser=promptDouble(mathQuestion.question);
    if(userAnwser == mathQuestion.answer){
      print("correct");
    }else{
      print("wrong, answer is ${mathQuestion.answer}");
    }
  }
  //print(questions[0].question);
  //List<Object> a = [];
}

double promptDouble(String promptText){
  print(promptText);
  double num=double.parse(stdin.readLineSync()!);
  return num;
}
