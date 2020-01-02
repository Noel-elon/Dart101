import 'dart:core';
import 'dart:io';

///@author: Nwaelugo Noel
///noelnwaelugo@gmail.com
main() {
  //just like scanners in java
  //stdout.writeln('what is your name?');
  // var name = stdin.readLineSync();
  //print("my name is $name");

  //you can use var for any data type

  // conversion between data types
  var one = int.parse('13');
  if (one == 23)
    print('true');
  else if (one == 13)
    print('false');
  else
    print('Noel');

  int x = 100;
  //Ternary operator... kinda like a conditional..
  var result = x % 2 == 0 ? 'Even' : 'Odd';
  print(result);

//type test
  var y = 40;
  if (y is int) print('true');

  //Conditional statements
  //if else if, else, switch

  //Loops
  for (int i = 0; i <= 10; i++) print(i);
  //for in loop
  var numbers = [1, 2, 3, 4];
  for (var n in numbers) {
    print(n);
  }
  //for each loop
  numbers.forEach((n) => print(n));

  //while loop
  int g = 5;
  while (g < 20) {
    print(g);
    g++;
  }
  //do while

  //break and continue
  for (var i = 0; i < 10; i++) {
    if (i > 5) break;
    print(i);
  }
  //converting to string
  var num = 23.toString();
  const num2 = 45;

  var n = Num();
  int nmber;
  //question mark after the variable name is used to check for nulPointer Exceptions
  //the double queston mark is used to assign a default value
  nmber = n?.num ?? 0;
//the ??= operator is used to assign a value to a variable if it is null
  nmber ??= 100;
}

class Num {
  int num = 10;
}
