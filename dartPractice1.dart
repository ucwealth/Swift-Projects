import 'dart:io';

void main() {
  // Basic Calculator

  // print("Type first number: ");
  // String? firstNum = stdin.readLineSync();
  // print("Type second number: ");
  // String? secondNum = stdin.readLineSync();
  // print(int.parse(firstNum!) + int.parse(secondNum!));

  // Mad Libs Game
  print("Enter a color: ");
  String? color = stdin.readLineSync();

  print("Enter a plural noun: ");
  String? noun = stdin.readLineSync();

  print("Enter a celebrity name: ");
  String? celebrity = stdin.readLineSync();
  print(" ");
  print("Roses are ${color}");
  print("${noun} are blue");
  print("I love ${celebrity}");
}
