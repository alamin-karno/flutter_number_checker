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

- Check number is <b>prime number</b> or not

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

## Additional information

- [Flutter Number Checker (pub.dev)](https://pub.dev/packages/flutter_number_checker)
- [Flutter Number Checker (Github)](https://github.com/alamin-karno/flutter_number_checker)



### Contributing
This is a open source project so anyone want to contribute on this proejct is most welcome. Go to [Github - Flutter Number Checker](https://github.com/alamin-karno/flutter_number_checker) and fork the project. Then clone the project and make changes. After that create a pull request. I will review the changes and merge it if it is good.

<h3 align=center> Project Maintainer ❤️ </h3>
<p align="center">
<table align="center">
  <tbody><tr>
     <td align="center"><a href="https://github.com/alamin-karno"><img alt="" src="https://avatars.githubusercontent.com/alamin-karno" width="125px;"><br><sub><b> Md. Al-Amin </b></sub></a><br></td> </a></td>

</tbody></table>


<h3 align=center> ✨VALUABLE CONTRIBUTORS✨ </h3>
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
