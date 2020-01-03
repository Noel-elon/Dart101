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

  //COLLECTIONS

  //List
  List names = ['jo', 'jill'];
  print(names[0]);

  //Set
  var noels = {'Noe', 'Nwaelugo'};
  Set peeps = {};
  //Maps
  var gift = {
    'first' : 'Noel',
  'Second' : 3,
  };
  var gift2 = Map();

  //converting to string
  var num = 23.toString();
  const num2 = 45;

  var n = Num('norl');
  int nmber;
  //question mark after the variable name is used to check for nulPointer Exceptions
  //the double queston mark is used to assign a default value
 // nmber = n?.num ?? 0;
//the ??= operator is used to assign a value to a variable if it is null
  nmber ??= 100;
  //caling the named functions
sum(num1: 23, num2: 24);

}
//A function that squares a number
dynamic square(var num){
  return num * num;
}
//another void function
void showOutput(msg){
  print(msg);
}





//Arrow function =>
dynamic square2(var num) => num * num;

//functions with no name..caled anonymous func or lambda in other languages
var lis = {'appes', 'banana', 'NOel'};

//positional parameters you define the parameters in the order theu were initialized
//named params (they are optional) but we have to check if they are null
dynamic sum({var num1, var num2}) => num1 + (num2?? 0); //or we can pass a default value
//we can aso mix named and positional params
//we can make positional parameters optional by putting them in square braces



//CLASSES
class Person{
  String name;
  int age;

  //constructor
  //Defining a default age doesnt mean irs parmanent it just means that you dont have to define a new age
  Person(String name, [int age =18]){
    this.name = name;
    this.age = age;
  }
  //or
 // Person(this.name, [this.age = 18]);

  // named constructor
  Person.guest(){
    name = 'Guest';
    age = 56;
  }

  void showOutput(){
    print(name);
    print(age);
  }
}


class Num {
  //final keyword means the variable cant be changed after assigning it with the constructor, it can only be changed when we assign again usong the constructor
  final name6;
  //const means the vaue must be assigned there ad it cant be changed at all
  static const int age = 10;
  Num(this.name6);

}

//you can inherit a class using the extends keyword
class Human extends Person{
  int lifeSpan;
  //this is where we cal the params from the super class using the : and super keyword
  Human(this.lifeSpan, int age, String name) : super(name, age);

  //calling a method from the super class we use the super keyword too
void showOutput(){
  super.showOutput();
  print(lifeSpan);
}
//to override a methis that was in the super class use @override

}

//Getters and setters
class Rectangle {
  //num keyword is for doubes and integers
  num left, top, width, height;
  Rectangle(this.left, this.width,this.height, this.top);

  num get right => left + width;
  set right(num value) => left = value - width;
  num get bottom => top + height;
  set bottom(num value) => top = value - height;


}
