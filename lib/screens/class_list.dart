import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:student_spark_coin/models/classes.dart';
import 'package:student_spark_coin/models/student.dart';
import 'package:student_spark_coin/screens/student_list.dart';

class ClassList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ClassListState();
  }
}

class ClassListState extends State {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      child: StreamBuilder<QuerySnapshot>(
          stream: Firestore.instance.collection("class").snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Text(
                "Loading",
                style: TextStyle(fontFamily: "GoogleSans", fontSize: 25.0),
              );
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
            "Classes",
            style: TextStyle(color: Colors.white, fontFamily: "GoogleSans"),
          ),
        ),
      ),
      body: Container(
        color: Colors.redAccent,
        child: ListView(
          padding: EdgeInsets.only(top: 20.0),
          children:
              snap.map<Widget>((data) => buildListItem(context, data)).toList(),
        ),
      ),
    );
  }

  buildListItem(BuildContext context, DocumentSnapshot data) {
    final row = Classes.fromSnapshot(data);
    return Padding(
      key: ValueKey(row.className),
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.redAccent),
            borderRadius: BorderRadius.circular(5.0)),
        child: Material(
          child: ListTile(
              title: Center(
                  child: Text(
                row.className,
                style: TextStyle(fontSize: 20.0, fontFamily: "GoogleSans"),
              )),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => StudentList(row.reference)));
              }),
        ),
      ),
    );
  }
}
