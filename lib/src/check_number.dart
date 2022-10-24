class FlutterNumberChecker {
  // is prime number
  bool isPrimeNumber(num n) {
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
}
