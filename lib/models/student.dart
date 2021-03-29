import 'package:cloud_firestore/cloud_firestore.dart';

class Student {
  String stdName;
  String stdSurname;
  String stdId;
  String privateKey;
  String publicKey;
  DocumentReference reference;

  Student.fromMap(Map<String, dynamic> map, [this.reference])
      : //assert(map["student"] != null),
        //assert(map["nine"] != null),
        //assert(map["student1"] != null),
        assert(map["stdName"] != null),
        assert(map["stdSurname"] != null),
        assert(map["stdId"] != null),
        assert(map["stdPrivateKey"] != null),
        assert(map["stdPublicKey"] != null),
        stdId = map["stdId"],
        stdName = map["stdName"],
        stdSurname = map["stdSurname"],
        privateKey = map["stdPrivateKey"],
        publicKey = map["stdPublicKey"];

  Student.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, snapshot.reference);
}
