import 'package:flutter/material.dart';

import 'lecturer_login.dart';

class LecturerLogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LecturerLoginState();
  }
}

class _LecturerLoginState extends State {
  var publicKey = GlobalKey<FormState>();
  var privateKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              width: 50,
              height: 50,
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
            SizedBox(height: MediaQuery.of(context).size.height / 30),
            Container(
              margin: EdgeInsets.all(20.0),
              child: Form(
                key: publicKey,
                child: Column(
                  children: <Widget>[
                    buildPublicKeyField(),
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 50),
            Container(
              margin: EdgeInsets.all(20.0),
              child: Form(
                key: privateKey,
                child: Column(
                  children: <Widget>[
                    buildPrivateKeyField(),
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 4),
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
                    "Login",
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

  /*Funcs*/
  Widget buildPublicKeyField() {
    return TextFormField(
      style: TextStyle(
          fontSize: 15,
          fontFamily: "GoogleSans",
          letterSpacing: 3.0,
          color: Colors.white,
          shadows: [
            Shadow(
              blurRadius: 15.0,
              color: Color(0xff770000),
              offset: Offset(-2.0, 2.0),
            ),
          ]),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        labelText: "Lecturer Public Key",
        hintStyle: TextStyle(
            fontSize: 15,
            fontFamily: "GoogleSans",
            letterSpacing: 3.0,
            color: Colors.white,
            shadows: [
              Shadow(
                blurRadius: 15.0,
                color: Color(0xff770000),
                offset: Offset(-2.0, 2.0),
              ),
            ]),
        labelStyle: TextStyle(
            fontSize: 25,
            fontFamily: "GoogleSans",
            letterSpacing: 3.0,
            color: Colors.white,
            shadows: [
              Shadow(
                blurRadius: 15.0,
                color: Color(0xff770000),
                offset: Offset(-2.0, 2.0),
              ),
            ]),
        hintText: "Your Public Key",
        fillColor: Colors.white,
      ),
      //validator: validateLastName, //girilecek karakterlerin uygunluğu
      onSaved: (String value) {},
    );
  }

  Widget buildPrivateKeyField() {
    return TextFormField(
      style: TextStyle(
          fontSize: 15,
          fontFamily: "GoogleSans",
          letterSpacing: 3.0,
          color: Colors.white,
          shadows: [
            Shadow(
              blurRadius: 15.0,
              color: Color(0xff770000),
              offset: Offset(-2.0, 2.0),
            ),
          ]),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        labelText: "Lecturer Private Key",
        hintStyle: TextStyle(
            fontSize: 15,
            fontFamily: "GoogleSans",
            letterSpacing: 3.0,
            color: Colors.white,
            shadows: [
              Shadow(
                blurRadius: 15.0,
                color: Color(0xff770000),
                offset: Offset(-2.0, 2.0),
              ),
            ]),
        labelStyle: TextStyle(
            fontSize: 25,
            fontFamily: "GoogleSans",
            letterSpacing: 3.0,
            color: Colors.white,
            shadows: [
              Shadow(
                blurRadius: 15.0,
                color: Color(0xff770000),
                offset: Offset(-2.0, 2.0),
              ),
            ]),
        hintText: "Your Private Key ",
        fillColor: Colors.white,
      ),
      //validator: validateLastName, //girilecek karakterlerin uygunluğu
      onSaved: (String value) {},
    );
  }
}
