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

import 'dart:math';

///  [FlutterNumberChecker] is a static library/class to check number is prime, even, odd,
/// palindrome, armstrong, perfect square, perfect number, perfect cube,
/// happy number, sad number, square number, triangular number, cube number,
/// harshad number, smith number, duck number, spy number, neon number, automorphic number etc.

class FlutterNumberChecker {
  /// [isPrimeNumber] check number is prime or not.
  /// Optional parameter k to choose number of tests to run.
  /// (Default is 40 giving error chance of 2^-80)
  ///
  ///Miller Rabin primality test adapted from
  /// William F. Yeng's python implementation
  static bool isPrimeNumber(int numberToCheck, {int k = 40}) {
    List<int> smallPrimes = [2, 3];
    if (numberToCheck == 0) {
      return false;
    }
    if (smallPrimes.contains(numberToCheck)) {
      return true;
    }
    for (int i = 1; i < k; i++) {
      int witness = 0;
      if (numberToCheck > pow(2, 32)) {
        witness = Random().nextInt(pow(2, 32) as int);
      } else {
        witness = Random().nextInt(numberToCheck - 3) + 2;
      }
      if (_singleTest(numberToCheck, witness) == false) {
        return false;
      }
    }
    return true;
  }

  /// single test function for isPrimeNumber
  static bool _singleTest(int numberToCheck, int witness) {
    int exponent = numberToCheck - 1;

    // bitwise even check
    while ((exponent & 1) == 0) {
      // bitwise divide by 2
      exponent >>= 1;
    }

    if (witness.modPow(exponent, numberToCheck) == 1) {
      return true;
    }

    while (exponent < numberToCheck - 1) {
      if (witness.modPow(exponent, numberToCheck) == numberToCheck - 1) {
        return true;
      }
      // bitwise multiple by 2
      exponent <<= 1;
    }

    return false;
  }

  /// [isEvenNumber] check number is even or not
  static bool isEvenNumber(num n) {
    if (n % 2 == 0) {
      return true;
    } else {
      return false;
    }
  }

  /// [isOddNumber] check number is odd or not
  static bool isOddNumber(num n) {
    if (n % 2 == 0) {
      return false;
    } else {
      return true;
    }
  }

  /// [isPalindromeNumber] check number is palindrome or not
  static bool isPalindromeNumber(num n) {
    String numString = n.toString();
    String reverseNumString = numString.split('').reversed.join();

    if (numString == reverseNumString) {
      return true;
    } else {
      return false;
    }
  }

  /// [isArmstrongNumber] check number is armstrong or not
  static bool isArmstrongNumber(num n) {
    String numString = n.toString();
    int numLength = numString.length;
    int sum = 0;

    for (int i = 0; i < numLength; i++) {
      int num = int.parse(numString[i]);
      sum += num * num * num;
    }

    if (sum == n) {
      return true;
    } else {
      return false;
    }
  }

  /// [isPerfectNumber] check number is perfect number or not
  static bool isPerfectNumber(num n) {
    int sum = 0;

    for (int i = 1; i < n; i++) {
      if (n % i == 0) {
        sum += i;
      }
    }

    if (sum == n) {
      return true;
    } else {
      return false;
    }
  }

  /// [isPerfectSquare] check number is perfect square or not
  static bool isPerfectSquare(num n) {
    double sqrtNum = sqrt(n);

    if (sqrtNum == sqrtNum.roundToDouble()) {
      return true;
    } else {
      return false;
    }
  }

  // [isPerfectCube] check number is perfect cube or not
  static bool isPerfectCube(num n) {
    double cubeRootNum = pow(n, 1 / 3).toDouble();

    if (cubeRootNum == cubeRootNum.roundToDouble()) {
      return true;
    } else {
      return false;
    }
  }

  /// [isHappyNumber] check number is happy number or not
  static bool isHappyNumber(num n) {
    int sum = 0;
    int count = 0;

    while (sum != 1 && count < 10) {
      sum = 0;
      String numString = n.toString();
      int numLength = numString.length;

      for (int i = 0; i < numLength; i++) {
        int num = int.parse(numString[i]);
        sum += num * num;
      }

      n = sum;
      count++;
    }

    if (sum == 1) {
      return true;
    } else {
      return false;
    }
  }

  /// [isSadNumber] check number is sad number or not
  static bool isSadNumber(num n) {
    int sum = 0;
    int count = 0;

    while (sum != 1 && count < 10) {
      sum = 0;
      String numString = n.toString();
      int numLength = numString.length;

      for (int i = 0; i < numLength; i++) {
        int num = int.parse(numString[i]);
        sum += num * num;
      }

      n = sum;
      count++;
    }

    if (sum != 1) {
      return true;
    } else {
      return false;
    }
  }

  /// [isFibonacciNumber] check number is fibonacci number or not
  static bool isFibonacciNumber(num n) {
    int a = 0;
    int b = 1;
    int c = 0;

    while (c < n) {
      c = a + b;
      a = b;
      b = c;
    }

    if (c == n) {
      return true;
    } else {
      return false;
    }
  }

  /// [isSquareNumber] check number is square number or not
  static bool isSquareNumber(num n) {
    int a = 0;
    int b = 1;
    int c = 0;

    while (c < n) {
      c = a + b;
      a = b;
      b = c;
    }

    if (c == n) {
      return true;
    } else {
      return false;
    }
  }

  /// [isTriangularNumber] check number is triangular number or not
  static bool isTriangularNumber(num n) {
    int sum = 0;

    for (int i = 1; i < n; i++) {
      sum += i;

      if (sum == n) {
        return true;
      }
    }

    return false;
  }

  /// [isCubeNumber] check number is cube number or not
  static bool isCubeNumber(num n) {
    int a = 0;
    int b = 1;
    int c = 0;

    while (c < n) {
      c = a + b;
      a = b;
      b = c;
    }

    if (c == n) {
      return true;
    } else {
      return false;
    }
  }

  /// [isHarshadNumber] check number is harshad number or not
  static bool isHarshadNumber(num n) {
    String numString = n.toString();
    int numLength = numString.length;
    int sum = 0;

    for (int i = 0; i < numLength; i++) {
      int num = int.parse(numString[i]);
      sum += num;
    }

    if (n % sum == 0) {
      return true;
    } else {
      return false;
    }
  }

  /// [isSmithNumber] check number is smith number or not
  static bool isSmithNumber(num n) {
    String numString = n.toString();
    int numLength = numString.length;
    int sum = 0;

    for (int i = 0; i < numLength; i++) {
      int num = int.parse(numString[i]);
      sum += num;
    }

    int sumOfPrimeFactors = 0;

    for (int i = 2; i < n; i++) {
      if (n % i == 0) {
        if (isPrimeNumber(i)) {
          String primeFactorString = i.toString();
          int primeFactorLength = primeFactorString.length;

          for (int j = 0; j < primeFactorLength; j++) {
            int primeFactor = int.parse(primeFactorString[j]);
            sumOfPrimeFactors += primeFactor;
          }
        }
      }
    }

    if (sum == sumOfPrimeFactors) {
      return true;
    } else {
      return false;
    }
  }

  /// [isDuckNumber] check number is duck number or not
  static bool isDuckNumber(num n) {
    String numString = n.toString();

    if (numString[0] == '0') {
      return true;
    } else {
      return false;
    }
  }

  /// [isSpyNumber] check number is spy number or not
  static bool isSpyNumber(num n) {
    String numString = n.toString();
    int numLength = numString.length;
    int sum = 0;
    int product = 1;

    for (int i = 0; i < numLength; i++) {
      int num = int.parse(numString[i]);
      sum += num;
      product *= num;
    }

    if (sum == product) {
      return true;
    } else {
      return false;
    }
  }

  /// [isNeonNumber] check number is neon number or not
  static bool isNeonNumber(num n) {
    int square = (n * n).toInt();
    String squareString = square.toString();
    int squareLength = squareString.length;
    int sum = 0;

    for (int i = 0; i < squareLength; i++) {
      int num = int.parse(squareString[i]);
      sum += num;
    }

    if (sum == n) {
      return true;
    } else {
      return false;
    }
  }

  /// [isAutomorphicNumber] check number is automorphic number or not
  static bool isAutomorphicNumber(num n) {
    int square = (n * n).toInt();
    String squareString = square.toString();
    String numString = n.toString();

    if (squareString.endsWith(numString)) {
      return true;
    } else {
      return false;
    }
  }

  /// [isStrobogrammaticNumber] check number is strobogrammatic number or not
  static bool isStrobogrammaticNumber(num n) {
    String numString = n.toString();
    int numLength = numString.length;
    String reverseString = '';

    for (int i = numLength - 1; i >= 0; i--) {
      reverseString += numString[i];
    }

    if (numString == reverseString) {
      return true;
    } else {
      return false;
    }
  }

  /// [isKaprekarNumber] check number is kaprekar number or not
  static bool isKaprekarNumber(num n) {
    int square = (n * n).toInt();
    String squareString = square.toString();
    int squareLength = squareString.length;
    int sum = 0;

    for (int i = 0; i < squareLength; i++) {
      int num = int.parse(squareString[i]);
      sum += num;
    }

    if (sum == n) {
      return true;
    } else {
      return false;
    }
  }

  /// [isDisariumNumber] check number is disarium number or not
  static bool isDisariumNumber(num n) {
    String numString = n.toString();
    int numLength = numString.length;
    int sum = 0;

    for (int i = 0; i < numLength; i++) {
      int num = int.parse(numString[i]);
      sum += pow(num, i + 1).toInt();
    }

    if (sum == n) {
      return true;
    } else {
      return false;
    }
  }

  /// [isKrishnamurthyNumber] check number is krishnamurthy number or not
  static bool isKrishnamurthyNumber(num n) {
    String numString = n.toString();
    int numLength = numString.length;
    int sum = 0;

    for (int i = 0; i < numLength; i++) {
      int num = int.parse(numString[i]);
      sum += factorial(num);
    }

    if (sum == n) {
      return true;
    } else {
      return false;
    }
  }

  static int factorial(int n) {
    return n == 1 ? 1 : n * factorial(n - 1);
  }

  /// [isEmirpNumber] check number is emirp number or not
  static bool isEmirpNumber(num n) {
    if (isPrimeNumber(n)) {
      String numString = n.toString();
      int numLength = numString.length;
      String reverseString = '';

      for (int i = numLength - 1; i >= 0; i--) {
        reverseString += numString[i];
      }

      int reverseNumber = int.parse(reverseString);

      if (isPrimeNumber(reverseNumber)) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  /// [isAbundantNumber] check number is abundant number or not
  static bool isAbundantNumber(num n) {
    int sum = 0;

    for (int i = 1; i < n; i++) {
      if (n % i == 0) {
        sum += i;
      }
    }

    if (sum > n) {
      return true;
    } else {
      return false;
    }
  }

  /// [isDeficientNumber] check number is deficient number or not
  static bool isDeficientNumber(num n) {
    int sum = 0;

    for (int i = 1; i < n; i++) {
      if (n % i == 0) {
        sum += i;
      }
    }

    if (sum < n) {
      return true;
    } else {
      return false;
    }
  }

  /// [isFactorialNumber] check number is factorial number or not
  static bool isFactorialNumber(num n) {
    int sum = 0;

    for (int i = 1; i < n; i++) {
      sum += factorial(i);

      if (sum == n) {
        return true;
      }
    }

    return false;
  }

  /// [isCircularPrimeNumber] check number is circular prime number or not
  static bool isCircularPrimeNumber(num n) {
    String numString = n.toString();
    int numLength = numString.length;
    String circularPrimeString = '';

    for (int i = 0; i < numLength; i++) {
      circularPrimeString += numString[i];
    }

    for (int i = 0; i < numLength; i++) {
      int circularPrimeNumber = int.parse(circularPrimeString);

      if (!isPrimeNumber(circularPrimeNumber)) {
        return false;
      }

      circularPrimeString = circularPrimeString.substring(1) +
          circularPrimeString.substring(0, 1);
    }

    return true;
  }
}
