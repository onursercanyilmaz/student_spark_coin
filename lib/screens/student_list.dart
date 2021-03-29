import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:student_spark_coin/models/student.dart';

class StudentList extends StatefulWidget {
  StudentList(DocumentReference reference);

  @override
  State<StatefulWidget> createState() {
    return StudentListState();
  }
}

class StudentListState extends State {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder<QuerySnapshot>(
          stream: Firestore.instance.collection("student").snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Text("Loading");
            } else {
              return buildBody(context, snapshot.data.documents);
            }
          }),
    );
  }

  Widget buildBody(BuildContext context, List<DocumentSnapshot> snap) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffc12f2f),
        automaticallyImplyLeading: false,
        brightness: Brightness.light,
        shadowColor: Colors.transparent,
        title: Center(
          child: Text(
            "Students",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "GoogleSans",
            ),
          ),
        ),
      ),
      body: Container(
        child: ListView(
          padding: EdgeInsets.only(top: 20.0),
          children:
              snap.map<Widget>((data) => buildListItem(context, data)).toList(),
        ),
      ),
    );
  }

  buildListItem(BuildContext context, DocumentSnapshot data) {
    final row = Student.fromSnapshot(data);
    var mes = "Deleted Successfully!";
    var _iconColor = Colors.white;
    return Padding(
      key: ValueKey(row.stdName),
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white12),
            borderRadius: BorderRadius.circular(100.0)),
        child: Material(
          color: Colors.transparent,
          // ignore: deprecated_member_use
          child: Column(children: [
            Card(
              color: Colors.blue,
              child: ListTile(
                focusColor: Colors.white12,
                leading: Container(child: Icon(Icons.where_to_vote)),
                selectedTileColor: Colors.green,
                title: Center(
                    child: Text(
                  row.stdName + " " + row.stdSurname,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "GoogleSans",
                      fontSize: 20),
                )),
                trailing: Text(
                  (row.stdId).toString(),
                  style: TextStyle(
                      fontFamily: "GoogleSans",
                      fontSize: 15,
                      color: Colors.white),
                ),
                tileColor: Color(0xFFFF5252),
                onTap: () {
                  setState(() {
                    if (_iconColor == Colors.white) {
                      _iconColor = Colors.green;
                      final snackBar = SnackBar(
                          backgroundColor: Colors.green,
                          content: Text(
                            row.stdName + " is here. SSCoin Sent",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: "GoogleSans",
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  });
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

void showMessage() {
  SimpleDialog(
    title: Text("Process Result"),
  );
}
