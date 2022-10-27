import 'package:flutter/material.dart';
import 'package:flutter_number_checker/flutter_number_checker.dart';

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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          /// CHECK ON EXTENSION WAY
          const Text(
            'EXTENSION WAY',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          /// CHECK PRIME OR NOT
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                ' $number is PRIME: ',
              ),
              Text(
                number.isPrimeNumber.toString(),
              ),
            ],
          ),

          /// CHECK FIBONACCI OR NOT
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                ' $number is FIBONACCI: ',
              ),
              Text(
                number.isFibonaciNumber.toString(),
              ),
            ],
          ),

          /// CHECK PALINDROME OR NOT
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                ' $number is PALINDROME: ',
              ),
              Text(
                number.isPalindromeNumber.toString(),
              ),
            ],
          ),

          /// CHECK ARMSTRONG OR NOT
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                ' $number is ARMSTRONG: ',
              ),
              Text(
                number.isArmstrongNumber.toString(),
              ),
            ],
          ),

          /// CHECK HAPPY NUMBER OR NOT
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                ' $number is HAPPY NUMBER: ',
              ),
              Text(
                number.isHappyNumber.toString(),
              ),
            ],
          ),

          /// DIVIDER
          const Divider(),

          /// CHECK NORMAL METHOD WAY
          const Text(
            'METHOD WAY',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          /// CHECK PRIME OR NOT
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                ' $number2 is PRIME: ',
              ),
              Text(
                FlutterNumberChecker.isPrimeNumber(number2).toString(),
              ),
            ],
          ),

          /// CHECK FIBONACCI OR NOT
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                ' $number2 is FIBONACCI: ',
              ),
              Text(
                FlutterNumberChecker.isFibonacciNumber(number2).toString(),
              ),
            ],
          ),

          /// CHECK PALINDROME OR NOT
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                ' $number2 is PALINDROME: ',
              ),
              Text(
                FlutterNumberChecker.isPalindromeNumber(number2).toString(),
              ),
            ],
          ),

          /// CHECK ARMSTRONG OR NOT
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                ' $number2 is ARMSTRONG: ',
              ),
              Text(
                FlutterNumberChecker.isArmstrongNumber(number2).toString(),
              ),
            ],
          ),

          /// CHECK HAPPY NUMBER OR NOT
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                ' $number2 is HAPPY NUMBER: ',
              ),
              Text(
                FlutterNumberChecker.isHappyNumber(number2).toString(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
