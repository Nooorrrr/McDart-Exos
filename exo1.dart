//simple calculator program

import 'dart:io';

void main() {
  print("Enter number 1 :");
  int? num1 = int.parse(stdin.readLineSync()!);

  print("Enter number 2 :");
  int? num2 = int.parse(stdin.readLineSync()!);

  int sum = num1 + num2;
  print("$num1 + $num2 = $sum");
  int sub = num1 - num2;
  print("$num1 - $num2 = $sub");
  int mul = num1 * num2;
    print("$num1 * $num2 = $mul");
  if (num2 == 0) {
    print("u cant devide by 0");
  }else {
      double div = num1 / num2 ;
      print("$num1 / $num2 = $div");
  }
}
