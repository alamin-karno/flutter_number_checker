<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->
# Flutter Number Checker

A flutter plugin for checking number easily.

Note: This plugin is still under development, and some checking might not be available yet.

## Features

- Implementing all favorite number checking algorithm: 

| Name | Function | Description | Example |
| ------------ | ----------- | ----------- | ----------- |
| Prime Number | isPrimeNumber | A prime number is a natural number greater than 1 that has no positive divisors other than 1 and itself. | 2, 3, 5 |
| Even Number | isEvenNumber | An even number is a number that is divisible by 2. | 2, 4, 6 |
| Odd Number | isOddNumber | An odd number is a number that is not divisible by 2. | 1, 3, 5 |
| Palindrome Number | isPalindromeNumber | A palindrome number is a number that is the same when read forwards or backwards. | 121, 12321 |
| Armstrong Number | isArmstrongNumber | An Armstrong number is a number that is equal to the sum of cubes of its digits. | 153, 370, 371, 407 |
| Perfect Number | isPerfectNumber | A perfect number is a positive integer that is equal to the sum of its proper positive divisors, that is, the sum of its positive divisors excluding the number itself. | 6, 28, 496 |
| Perfect Square | isPerfectSquare | A perfect square is a number that is the product of some integer with itself. |
| Perfect Cube | isPerfectCube | A perfect cube is a number that is the product of some integer with itself three times. | 8, 27, 64 |
| Sad Number | isSadNumber | A sad number is a number that is not a happy number. | 4, 16, 37, 58, 145, 42, 20 |
| Happy Number | isHappyNumber | A happy number is a number defined by the following process: Starting with any positive integer, replace the number by the sum of the squares of its digits, and repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1. Those numbers for which this process ends in 1 are happy numbers, while those that do not end in 1 are unhappy numbers (or sad numbers). | 1, 7, 10, 13 |
| Square Number | isSquareNumber | A square number is a number that is the product of some integer with itself. | 1, 4, 9, 16, 25  |
| Cube Number | isCubeNumber | A cube number is a number that is the product of some integer with itself three times. | 8, 27, 64 |
| Triangular Number | isTriangularNumber | A triangular number is a number of the form n(n+1)/2, where n is a positive integer. | 1, 3, 6, 10, 15, 21, 28 |
| Harshad Number | isHarshadNumber | A Harshad number is a number that is divisible by the sum of its digits. | 18 |
| Smith Number | isSmithNumber | A Smith number is a composite number, the sum of whose digits is the sum of the digits of its prime factors obtained as a result of prime factorization (excluding 1). | 4, 22, 27 |
| Duck Number | isDuckNumber | A duck number is a number which has zeroes present in it, but there should be no zero present in the beginning of the number. | 3210, 7056, 8430709 |
| Spy Number | isSpyNumber | A spy number is a number whose sum and product of digits are equal. | 123, 1124, 1313 |
| Automorphic Number | isAutomorphicNumber | An automorphic number is a number whose square "ends" in the same digits as the number itself. | 5, 6, 25, 76, 376, 625 |
| Neon Number | isNeonNumber | A neon number is a number where the sum of digits of the square of the number is equal to the number itself. | 9, 45, 100, 303, 819 |
| Strobogrammatic Number | isStrobogrammaticNumber | A strobogrammatic number is a number whose numeral is rotationally symmetric, so that it appears the same when rotated 180 degrees. | 0, 1, 8, 11, 69, 88, 96 |
| Disarium Number | isDisariumNumber | A disarium number is a number defined by the following process: Starting with a digit in a given base, raise the digit to the power of its position in the number and add it to a running total. Repeat the process with the remaining digits and sum the results. | 135, 518, 598, 1306 |
| Kaprekar Number | isKaprekarNumber | A Kaprekar number is a non-negative integer, the representation of whose square in a given base can be split into two parts that add up to the original number again. | 45, 55, 99, 297 |
| Krishnamurthy Number | isKrishnamurthyNumber | A Krishnamurthy number is a number whose sum of the factorial of digits is equal to the number itself. | 145, 40585 |
| Emirp Number | isEmirpNumber | An emirp number is a prime number that results in a different prime when its digits are reversed. | 13, 17, 31, 37 |
| Abundant Number | isAbundantNumber | An abundant number is a number for which the sum of its proper divisors is greater than the number itself. | 12, 18, 20, 24 |
| Deficient Number | isDeficientNumber | A deficient number is a number for which the sum of its proper divisors is less than the number itself. | 2, 4, 6, 8 |
| Fibonacci Number | isFibonacciNumber | A Fibonacci number is a number in the Fibonacci sequence, characterized by the fact that every number after the first two is the sum of the two preceding ones. | 0, 1, 1, 2, 3, 5 |
| Factorial Number | isFactorialNumber | A factorial number is a number that is the product of an integer and all the integers below it. | 1, 2, 6, 24, 120 |
| Circular Prime Number | isCircularPrimeNumber | A circular prime number is a prime number with the property that when rotated by any number of digits, it always results in a prime number. | 2, 3, 5, 7 |


## Getting started

 #### Add dependency:
 Please check the latest version before installation. If there is any problem with the new version, please use the previous version.




```yaml
dependencies:
  flutter:
    sdk: flutter
  # add flutter_number_checker
  flutter_number_checker : ^{latest version}
```

or run this command:

```bash
 flutter pub add flutter_number_checker
 ```

Add the following imports to your Dart code/ Flutter Code:

```dart
import 'package:flutter_number_checker/flutter_number_checker.dart';
```

## Usage

Will add longer examples into `/example` folder.

```dart
 int number = 7;
 int number2 = 10;

 // check number is prime number or not normal way.
 bool isPrime = await FlutterNumberChecker.isPrimeNumber(number);
 print(isPrime); // true

 // check number is prime number or not using extention method.
  bool isPrime2 = number2.isPrimeNumber();
  print(isPrime2); // false
```

 - ## Check number is prime number or not on flutter:
   - First, you need to import the package:
   
 ```dart
  import 'package:flutter_number_checker/flutter_number_checker.dart';
```

   - Create a project decleare HomeScreen as a StatefulWidget:

```dart
  void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Number Checker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(title: 'Flutter Number Checker'),
    );
  }
}
```

   - Create a variable to store the number you want to check:

```dart
  class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});
  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  num number = 7;
  num number2 = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                ' $number is: ',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                number.isPrimeNumber ? 'PRIME' : 'NOT PRIME',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: Colors.black),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                ' $number2 is: ',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                number2.isPrimeNumber ? 'PRIME' : 'NOT PRIME',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
```

  - Run the project and you will see the result:

| Home Screen |
|:--:|
| <img src="https://github.com/alamin-karno/flutter_number_checker/blob/master/example/screenshots/flutter_number_check_example.png?raw=true" width = "250"> |


## Additional information

- [Flutter Number Checker (pub.dev)](https://pub.dev/packages/flutter_number_checker)
- [Flutter Number Checker (Github)](https://github.com/alamin-karno/flutter_number_checker)



### Contributing
This is a open source project so anyone want to contribute on this proejct is most welcome. Go to [Github - Flutter Number Checker](https://github.com/alamin-karno/flutter_number_checker) and fork the project. Then clone the project and make changes. After that create a pull request. I will review the changes and merge it if it is good.

<h3 align=center> Project Maintainer ❤️ </h3>
<p align="center">
<table align="center">
  <tbody><tr>
     <td align="center">
     <a href="https://github.com/alamin-karno">
     <img alt="Md. Al-Amin" src="https://avatars.githubusercontent.com/alamin-karno" width="125px;"> <br>
     <sub><b> Md. Al-Amin </b></sub>
     </a><br></td></tr>
     </tbody> </table> </p>


<h3 align="center"> ✨VALUABLE CONTRIBUTORS✨ </h3>
<p align="center">
<a href="https://github.com/alamin-karno/flutter_number_checker/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=alamin-karno/flutter_number_checker" />
</a>
</p>
<h3 align="center"> Happy Coding 👨‍💻 </h3>


## License

```MIT License

Copyright (c) 2022 Md. Al-Amin

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
