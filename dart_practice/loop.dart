import "dart:io";
void main(){
  /*
  int i=0;
  while(i<5){
    print(i);
    i++;
  }
  */
  String anwser = "MS";
  String guess = "";
  int guessCount = 0;
  while(guess != anwser){
    guess = prompt("enter a guess");
    guessCount++;
  }
  /*
  for(int n=0;n<7;n++){
  }
  */
  print("you won in $guessCount th guesses!");
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