import "dart:math";
import "dart:io";
void main() {
  List<int> alist = [1,2,3,4,5];
  print(alist[1]);
  alist[4]=99;
  print(alist);
  print(alist.length);
 

  alist.add(100);
  alist.remove(1);
  print(alist.reversed);

  print(alist.indexOf(11));
  print(alist.contains(100));

  
}