import 'dart:io';

void main() {
  // Predefined list of users with emails and passwords
  List<Map<String, String>> users = [
    {"email": "user1", "password": "pass1"},
    {"email": "user2", "password": "pass2"},
    {"email": "user3", "password": "pass3"},
    // Add more user credentials as needed
  ];
  bool isloggedin = false;
  while (!isloggedin) {
    stdout.writeln('Enter your email');
    String? eml = stdin.readLineSync();
    stdout.writeln('Enter your password');
    String? pass = stdin.readLineSync();
    for (var user in users) {
      if (user['email'] == eml && user['password'] == pass) {
        print('login successful');
        isloggedin = true;
        break;
      }
    }
    if (!isloggedin) {
      print('invalid password or email. Try again');
    }
  }
}
