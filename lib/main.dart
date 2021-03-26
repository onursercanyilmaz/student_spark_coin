import 'package:flutter/material.dart';
import 'package:student_spark_coin/screens/lecturer_login.dart';
import 'package:student_spark_coin/screens/student_login.dart';
import 'package:student_spark_coin/screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (BuildContext context) => WelcomeScreen(),
        "/std_login": (BuildContext context) => StudentLogin(),
        "/lec_login": (BuildContext context) => LecturerLogin()
      },
      initialRoute: "/",
    );
  }
}
