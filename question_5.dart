import 'dart:io';

void main() {
  stdout.writeln('Enter a number');
  String str = stdin.readLineSync()!;
  int num1 = int.tryParse(str) ?? 0;
  if (num1 <= 1) {
    print('$num1 is not a prime number');
  } else {
    bool isPrime = true;

    for (var i = 2; i <= num1 / 2; i++) {
      if (num1 % i == 0) {
        isPrime = false;
        break;
      }
    }
    if (isPrime) {
      print('$num1 is a prime number');
    } else {
      print('$num1 is not a prime number');
    }
  }
}
