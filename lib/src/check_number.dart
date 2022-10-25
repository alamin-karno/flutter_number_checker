import 'dart:math';

class FlutterNumberChecker {
  // is prime number
  static bool isPrimeNumber(num n) {
    if (n < 4 && n > 1) {
      return true;
    } else {
      bool primeFlag = true;
      int halfOfNum = n ~/ 2;

      for (int primeIterator = 2; primeIterator < halfOfNum; primeIterator++) {
        if (n % primeIterator == 0) {
          primeFlag = false;
          break;
        } else {
          primeFlag = true;
        }
      }

      if (primeFlag) {
        return true;
      } else {
        return false;
      }
    }
  }

  // is even number
  static bool isEvenNumber(num n) {
    if (n % 2 == 0) {
      return true;
    } else {
      return false;
    }
  }

  // is odd number
  static bool isOddNumber(num n) {
    if (n % 2 == 0) {
      return false;
    } else {
      return true;
    }
  }

  // is palindrome number
  static bool isPalindromeNumber(num n) {
    String numString = n.toString();
    String reverseNumString = numString.split('').reversed.join();

    if (numString == reverseNumString) {
      return true;
    } else {
      return false;
    }
  }

  // is armstrong number
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

  // is perfect number
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

  // is perfect square
  static bool isPerfectSquare(num n) {
    double sqrtNum = sqrt(n);

    if (sqrtNum == sqrtNum.roundToDouble()) {
      return true;
    } else {
      return false;
    }
  }

  // is perfect cube
  static bool isPerfectCube(num n) {
    double cubeRootNum = pow(n, 1 / 3).toDouble();

    if (cubeRootNum == cubeRootNum.roundToDouble()) {
      return true;
    } else {
      return false;
    }
  }

  // is happy number
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

  //is sad number
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

  // is fibonacci number
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

  // is square number
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

  // is triangular number
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

  // is cube number
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

  // is harshad number
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

  // is smith number
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

  // is duck number
  static bool isDuckNumber(num n) {
    String numString = n.toString();

    if (numString[0] == '0') {
      return true;
    } else {
      return false;
    }
  }

  // is spy number
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

  // is neon number
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

  // is automorphic number
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

  // is strobogrammatic number
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

  // is kaprekar number
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

  // is disarium number
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

  // is krishnamurthy number
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

  // is emirp number
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

  // is abundant number
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

  // is deficient number
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

  // is factorial number
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

  // is circular prime number
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
