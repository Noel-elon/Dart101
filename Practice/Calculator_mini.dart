import 'dart:io';

///Written by Noel Nwaelugo
///Spoiler alert: This 'project' is dumb af
///why you still reading this?

main() {
  stdout.writeln('input a number: ');
  var aNum = stdin.readLineSync();
  int num1 = int.parse(aNum);

  stdout.writeln('input another number: ');
  var Anum2 = stdin.readLineSync();
  int num2 = int.parse(Anum2);

  stdout.writeln('whatcha wanna do?:  ');
  var operator = stdin.readLineSync();

  switch (operator) {
    case '+':
      add(num1, num2);
      break;

    case '-':
      substract(num1, num2);
      break;
    case '*':
      multiply(num1, num2);
      break;
    case '/':
      divide(num1, num2);
      break;

    default:
      print("we don't recognize this operator bruh");
  }
}

add(var num1, [var num2 = 0]) {
  print(num1 + num2);
}

substract(var num1, [var num2 = 0]) {
  print(num1 - num2);
}

divide(var num1, [var num2 = 0]) {
  print(num1 / num2);
}

multiply(var num1, [var num2 = 0]) {
  print(num1 * num2);
}
