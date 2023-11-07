import 'dart:io';

void main() {
  print('Enter the first number: ');
  String? input1 = stdin.readLineSync();
  print('Enter the second number: ');
  String? input2 = stdin.readLineSync();
  int number1 = int.tryParse(input1!) ?? 0;
  int number2 = int.tryParse(input2!) ?? 0;
  int sum = number1 + number2;
  print('Sum of $number1 and $number2 is: ' + sum.toString());
}
