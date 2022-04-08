import "dart:math";
import "dart:io";

class Book {
  String title="";
  String author="";
  int numPages=0;

  Book(String title,String author,int numPages){//constructor
    this.title=title;
    this.author=author;
    this.numPages=numPages;
  }
 
}
void main() { 
  Book hp = Book("Harry Potter","JK",200);
  print(hp.title);
  
}