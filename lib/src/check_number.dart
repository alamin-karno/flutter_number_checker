import 'package:flutter/material.dart';

extension on num {
  bool get isPrimeNumber => _isPrimeNumber(this);

  bool _isPrimeNumber(num n) {
    if (n < 4 && n > 1) {
      debugPrint("Prime");
      return true;
    } else {
      int primeIterator = 2;
      bool primeFlag = true;
      int halfOfNum = n ~/ 2;

      for (primeIterator; primeIterator < halfOfNum; primeIterator++) {
        if (n % primeIterator == 0) {
          primeFlag = false;
          break;
        } else {
          primeFlag = true;
        }
      }

      if (primeFlag) {
        debugPrint("Prime");
        return true;
      } else {
        debugPrint("Not Prime");
        return false;
      }
    }
  }
}
