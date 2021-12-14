class AddedValue {
  int hereValue = 2;

  addData(value) {
    String value2 = value.toString();
    // ignore: unnecessary_this
    hereValue = int.parse(value2);
  }
}
