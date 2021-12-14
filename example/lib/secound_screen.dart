import 'package:flutter/material.dart';
import 'package:flutter_counter_pack/flutter_package.dart';

class SecounScreen extends StatefulWidget {
  const SecounScreen({Key? key}) : super(key: key);

  @override
  _SecounScreenState createState() => _SecounScreenState();
}

class _SecounScreenState extends State<SecounScreen> {
  late  AddedValue addedValue ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addedValue = AddedValue();
    print("init");
  }

  @override
  Widget build(BuildContext context) {
    print("BuildContext");
    return Scaffold(
      appBar: AppBar(
        title: Text("data" + addedValue.hereValue.toString()),
      ),
      body: Container(),
    );
  }
}
