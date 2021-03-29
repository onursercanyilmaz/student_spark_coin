import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student_spark_coin/widgets/slider_widget.dart';

class AccountPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AccountPageState();
  }
}

class _AccountPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        title: Center(
          child: Text(
            "Welcome \nOnur Sercan Yılmaz",
            style:
                TextStyle(color: Color(0xff770000), fontFamily: "GoogleSans"),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      /*appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Welcome Mr.ABCDF",
          style: TextStyle(
              fontSize: 25,
              fontFamily: "GoogleSans",
              letterSpacing: 3.0,
              color: Color(0xfcbd0404),
              shadows: [
                Shadow(
                  blurRadius: 15.0,
                  color: Colors.black12,
                  offset: Offset(-2.0, 2.0),
                ),
              ]),
        ),
      ), */
      body: Container(
        color: Color(0xffe8423a),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                color: Color(0xffe8423a),
                height: MediaQuery.of(context).size.height / 3.5,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: const Radius.circular(60.0),
                      bottomRight: const Radius.circular(60.0),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('\n\$ 200',
                          style: new TextStyle(
                            fontSize: 60.0,
                            fontFamily: 'GoogleSans',
                            color: new Color(0xff770000),
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 15),
              SliderWidget(),
              SizedBox(height: MediaQuery.of(context).size.height / 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    child: Text(
                      "  Withdraw  ",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: "GoogleSans",
                          color: Colors.white,
                          letterSpacing: 4.0),
                    ),
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.white))),
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width / 15),
                  TextButton(
                    child: Text(
                      "  Deposit  ",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: "GoogleSans",
                          color: Colors.white,
                          letterSpacing: 4.0),
                    ),
                    onPressed: () {},
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.white)))),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    child: Text(
                      "  Refresh  ",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: "GoogleSans",
                          color: Colors.white,
                          letterSpacing: 4.0),
                    ),
                    onPressed: () {},
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.white)))),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
