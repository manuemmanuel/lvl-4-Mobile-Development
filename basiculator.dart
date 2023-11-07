import 'dart:io';

void main() {
  print('Welcome to the Calculator App!');
  print('Menu:');
  print('1. Addition');
  print('2. Subtraction');
  print('3. Multiplication');
  print('4. Division');
  print('5. Comparison (Equal or Not Equal)');
  print('6. Exit');
  print('Enter your choice (1-6): ');
  String? choice = stdin.readLineSync();
  switch (choice) {
    case '1':
      performAddition();
      break;
    case '2':
      performSubtraction();
      break;
    case '3':
      performMultiplication();
      break;
    case '4':
      performDivision();
      break;
    case '5':
      performComparison();
      break;
    case '6':
      print('Exiting the Calculator App. Goodbye!');
      break;
    default:
      print('Invalid choice. Please enter a number between 1 and 6.');
  }
}

void performAddition() {
  print('Enter first number: ');
  double num1 = double.tryParse(stdin.readLineSync()!) ?? 0;
  print('Enter second number: ');
  double num2 = double.tryParse(stdin.readLineSync()!) ?? 0;
  double result = num1 + num2;
  print('Result: $result');
}

void performSubtraction() {
  print('Enter first number: ');
  double num1 = double.tryParse(stdin.readLineSync()!) ?? 0;
  print('Enter second number: ');
  double num2 = double.tryParse(stdin.readLineSync()!) ?? 0;
  double result = num1 - num2;
  print('Result: $result');
}

void performMultiplication() {
  print('Enter first number: ');
  double num1 = double.tryParse(stdin.readLineSync()!) ?? 0;
  print('Enter second number: ');
  double num2 = double.tryParse(stdin.readLineSync()!) ?? 0;
  double result = num1 * num2;
  print('Result: $result');
}

void performDivision() {
  print('Enter dividend: ');
  double dividend = double.tryParse(stdin.readLineSync()!) ?? 0;
  print('Enter divisor: ');
  double divisor = double.tryParse(stdin.readLineSync()!) ?? 0;
  if (divisor != 0) {
    double result = dividend / divisor;
    print('Result: $result');
  } else {
    print('Error: Division by zero is not allowed.');
  }
}

void performComparison() {
  print('Enter first number: ');
  double num1 = double.tryParse(stdin.readLineSync()!) ?? 0;
  print('Enter second number: ');
  double num2 = double.tryParse(stdin.readLineSync()!) ?? 0;
  if (num1 == num2) {
    print('Numbers are equal.');
  } else {
    print('Numbers are not equal.');
  }
}
