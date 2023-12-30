import 'dart:io';

void main() {
  stdout.writeln('Enter your number');
  String num = stdin.readLineSync()!;

  int number1 = int.tryParse(num) ?? 0;
  for (var i = 1; i <= 10; i++) {
    print("$number1 X $i = ${number1 * i}");
  }
}
