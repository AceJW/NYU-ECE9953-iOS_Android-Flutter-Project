import "dart:math";
import "dart:io";
void main() {

  bool isSmart = true;
  bool isStudent = true;

  if(isSmart && isStudent){
    print("smart and student");
  }
  if(isSmart || isStudent){
    print("smart or student");
  }

   if(isSmart && !isStudent){
    print("smart and student");
  }
  /*
  String aa = "hello";
  if(aa.contains("e")){
    print("have e");
  }

  bool a = true;
  if(a == true){//if(5>3)
    print("It is ture");
  }else{
    print("no");
  }
  */


}