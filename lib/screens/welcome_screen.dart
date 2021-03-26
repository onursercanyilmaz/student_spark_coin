import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student_spark_coin/screens/lecturer_login.dart';
import 'package:student_spark_coin/screens/student_login.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/back.png"),
            fit: BoxFit.cover,
          ),
          color: Color(0xFFDF3B2E),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/StudentCoin_Logo.png",
              width: 250,
              height: 250,
            ),
            Text(
              "Student Spark Coin",
              style: TextStyle(
                  fontSize: 25,
                  fontFamily: "GoogleSans",
                  letterSpacing: 3.0,
                  color: Color(0xFF770000),
                  shadows: [
                    Shadow(
                      blurRadius: 15.0,
                      color: Color(0xff770000),
                      offset: Offset(-2.0, 2.0),
                    ),
                  ]),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 8),
            Container(
              width: MediaQuery.of(context).size.width / 1.4,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: Colors.white,
              ),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StudentLogin(),
                    ),
                  );
                },
                child: Text(
                  "Student",
                  style: TextStyle(
                    fontFamily: "GoogleSans",
                    fontSize: 20,
                    color: Color(0xff770000),
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 25),
            Container(
              width: MediaQuery.of(context).size.width / 1.4,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: Color(0xff770000),
              ),
              child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LecturerLogin(),
                      ),
                    );
                  },
                  child: Text(
                    "Lecturer",
                    style: TextStyle(
                        fontFamily: "GoogleSans",
                        fontSize: 20,
                        color: Color(0xffffffff)),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
