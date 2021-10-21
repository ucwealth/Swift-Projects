import 'dart:io';

void main() {
  // Basic Calculator

  // print("Type first number: ");
  // String? firstNum = stdin.readLineSync();
  // print("Type second number: ");
  // String? secondNum = stdin.readLineSync();
  // print(int.parse(firstNum!) + int.parse(secondNum!));

  // Mad Libs Game

  // print("Enter a color: ");
  // String? color = stdin.readLineSync();

  // print("Enter a plural noun: ");
  // String? noun = stdin.readLineSync();

  // print("Enter a celebrity name: ");
  // String? celebrity = stdin.readLineSync();
  // print(" ");
  // print("Roses are ${color}");
  // print("${noun} are blue");
  // print("I love ${celebrity}");

  // Arrays and Lists
  // List<int> favNumbers = [3, 6, 9, 12, 15];
  // favNumbers.add(18);
  // favNumbers.remove(6);
  // favNumbers.indexOf(6);
  // print(favNumbers);

  // print(addNum(5, 2));

  // Use Prompt Function
  // String color = prompt("Enter a color: ");
  // String noun = prompt("Enter a plural noun: ");
  // String celebrity = prompt("Enter a celebrity name: ");
  // print("Roses are ${color}");
  // print("${noun} are blue");
  // print("I love ${celebrity}");

  // While Loops
  // int num = 0;
  // while (num < 5) {
  //   print(num);
  //   num++;
  // }

  // Guessing game
  String answer = "Christ Embassy";
  String guess = "";
  int guessCount = 0;

  while (guess != answer) {
    guess = prompt("Guess the name of my church");
    guessCount++;
  }
  print("Correct. You won in ${guessCount} guesses!");
}

// Functions
double addNum(double num1, double num2) {
  return num1 + num2;
}

String prompt(String promptText) {
  print("${promptText}");
  String? response = stdin.readLineSync();
  return response!;
}
