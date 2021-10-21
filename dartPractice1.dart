import 'dart:io';

void main() {
  print("Type first number: ");
  String? firstNum = stdin.readLineSync();
  print("Type second number: ");
  String? secondNum = stdin.readLineSync();
  print(int.parse(firstNum!) + int.parse(secondNum!));
}
