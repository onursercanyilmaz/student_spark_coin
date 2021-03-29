import 'package:cloud_firestore/cloud_firestore.dart';

class Classes {
  String className;

  DocumentReference reference;

  Classes.fromMap(Map<String, dynamic> map, [this.reference])
      : //assert(map["student"] != null),
        //assert(map["nine"] != null),
        //assert(map["student1"] != null),
        assert(map["className"] != null),
        className = map["className"];

  Classes.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, snapshot.reference);
}
