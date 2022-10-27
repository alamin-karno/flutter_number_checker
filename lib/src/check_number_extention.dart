/* MIT License

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
*/

import 'package:flutter_number_checker/flutter_number_checker.dart';

/// [CheckNumberExtention] is a extention class for [FlutterNumberChecker] class.
/// This class make the extention method for [FlutterNumberChecker] class

extension CheckNumberExtention on num {
  /// [isPrimeNumber] is a extention method for [FlutterNumberChecker] class to check number is prime or not.
  bool get isPrimeNumber => FlutterNumberChecker.isPrimeNumber(this);

  /// [isEvenNumber] is a extention method for [FlutterNumberChecker] class to check number is even or not.
  bool get isEvenNumber => FlutterNumberChecker.isEvenNumber(this);

  /// [isOddNumber] is a extention method for [FlutterNumberChecker] class to check number is odd or not.
  bool get isOddNumber => FlutterNumberChecker.isOddNumber(this);

  /// [isPalindromeNumber] is a extention method for [FlutterNumberChecker] class to check number is palindrome or not.
  bool get isPalindromeNumber => FlutterNumberChecker.isPalindromeNumber(this);

  /// [isArmstrongNumber] is a extention method for [FlutterNumberChecker] class to check number is armstrong or not.
  bool get isArmstrongNumber => FlutterNumberChecker.isArmstrongNumber(this);

  /// [isPerfectNumber] is a extention method for [FlutterNumberChecker] class to check number is perfect or not.
  bool get isPerfectNumber => FlutterNumberChecker.isPerfectNumber(this);

  /// [isPerfectSquare] is a extention method for [FlutterNumberChecker] class to check number is perfect square or not.
  bool get isPerfectSquare => FlutterNumberChecker.isPerfectSquare(this);

  /// [isPerfectCube] is a extention method for [FlutterNumberChecker] class to check number is perfect cube or not.
  bool get isPerfectCube => FlutterNumberChecker.isPerfectCube(this);

  /// [isHappyNumber] is a extention method for [FlutterNumberChecker] class to check number is happy or not.
  bool get isHappyNumber => FlutterNumberChecker.isHappyNumber(this);

  /// [isSadNumber] is a extention method for [FlutterNumberChecker] class to check number is sad or not.
  bool get isSadNumber => FlutterNumberChecker.isSadNumber(this);

  /// [isSquareNumber] is a extention method for [FlutterNumberChecker] class to check number is square or not.
  bool get isSquareNumber => FlutterNumberChecker.isSquareNumber(this);

  /// [isTriangularNumber] is a extention method for [FlutterNumberChecker] class to check number is triangular or not.
  bool get isTriangularNumber => FlutterNumberChecker.isTriangularNumber(this);

  /// [isCubeNumber] is a extention method for [FlutterNumberChecker] class to check number is cube or not.
  bool get isCubeNumber => FlutterNumberChecker.isCubeNumber(this);

  /// [isHarshadNumber] is a extention method for [FlutterNumberChecker] class to check number is harshad or not.
  bool get isHarshadNumber => FlutterNumberChecker.isHarshadNumber(this);

  /// [isSmithNumber] is a extention method for [FlutterNumberChecker] class to check number is smith or not.
  bool get isSmithNumber => FlutterNumberChecker.isSmithNumber(this);

  /// [isDuckNumber] is a extention method for [FlutterNumberChecker] class to check number is duck or not.
  bool get isDuckNumber => FlutterNumberChecker.isDuckNumber(this);

  /// [isSpyNumber] is a extention method for [FlutterNumberChecker] class to check number is spy or not.
  bool get isSpyNumber => FlutterNumberChecker.isSpyNumber(this);

  /// [isNeonNumber] is a extention method for [FlutterNumberChecker] class to check number is neon or not.
  bool get isNeonNumber => FlutterNumberChecker.isNeonNumber(this);

  /// [isAutomorphicNumber] is a extention method for [FlutterNumberChecker] class to check number is automorphic or not.
  bool get isAutomorphicNumber =>
      FlutterNumberChecker.isAutomorphicNumber(this);

  /// [isStrobogrammaticNumber] is a extention method for [FlutterNumberChecker] class to check number is strobogrammatic or not.
  bool get isStrobogrammaticNumber =>
      FlutterNumberChecker.isStrobogrammaticNumber(this);

  /// [isDisariumNumber] is a extention method for [FlutterNumberChecker] class to check number is disarium or not.
  bool get isDisariumNumber => FlutterNumberChecker.isDisariumNumber(this);

  /// [isKaprekarNumber] is a extention method for [FlutterNumberChecker] class to check number is kaprekar or not.
  bool get isKaprekarNumber => FlutterNumberChecker.isKaprekarNumber(this);

  /// [isKrishnamurthyNumber] is a extention method for [FlutterNumberChecker] class to check number is krishnamurthy or not.
  bool get isKrishnamurthyNumber =>
      FlutterNumberChecker.isKrishnamurthyNumber(this);

  /// [isEmirpNumber] is a extention method for [FlutterNumberChecker] class to check number is emirp or not.
  bool get isEmirpNumber => FlutterNumberChecker.isEmirpNumber(this);

  /// [isAbundantNumber] is a extention method for [FlutterNumberChecker] class to check number is abundant or not.
  bool get isAbundantNumber => FlutterNumberChecker.isAbundantNumber(this);

  /// [isDeficientNumber] is a extention method for [FlutterNumberChecker] class to check number is deficient or not.
  bool get isDeficientNumber => FlutterNumberChecker.isDeficientNumber(this);

  /// [isFibonacciNumber] is a extention method for [FlutterNumberChecker] class to check number is fibonacci or not.
  bool get isFibonacciNumber => FlutterNumberChecker.isFibonacciNumber(this);

  /// [isFactorialNumber] is a extention method for [FlutterNumberChecker] class to check number is factorial or not.
  bool get isFactorialNumber => FlutterNumberChecker.isFactorialNumber(this);

  /// [isCircularPrimeNumber] is a extention method for [FlutterNumberChecker] class to check number is circular prime or not.
  bool get isCircularPrimeNumber =>
      FlutterNumberChecker.isCircularPrimeNumber(this);
}
