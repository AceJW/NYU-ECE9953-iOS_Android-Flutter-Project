import "dart:math";
import "dart:io";

class Student {
  String name="";
  double gpa=0;

  Student(String name, double gpa){
    this.name=name;
    this.gpa=gpa;
  }
  bool hasHonor(){//class function
    return this.gpa >= 3.5;
  }
}

void main(){
  Student jim = Student("jim",2.5);
  print(jim.gpa);
  print(jim.hasHonor());
}