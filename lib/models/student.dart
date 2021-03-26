class Student {
  int id;
  String firstName;
  String lastName;
  String stdPrivateKey;
  String stdPublicKey;

  Student.withId(int id, String firstName, String lastName,
      String stdPrivateKey, String stdPublicKey) {
    this.id = id;
    this.firstName = firstName;
    this.lastName = lastName;
    this.stdPrivateKey = stdPrivateKey;
    this.stdPublicKey = stdPublicKey;
  }
}
