import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/counter_controller.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final onPressed;
  final Widget child;
  final int addValue;
  // ignore: prefer_typing_uninitialized_variables
  var style;

  CustomButton(
      {Key? key,
      required this.child,
      required this.onPressed,
      required this.addValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterController counterController = Get.put(CounterController());

    return Column(
      children: [
        Obx(() => Text(counterController.counter.toString())),
        Obx(() =>
            Text("Value Added : " + counterController.hasValue.toString())),
        SizedBox(height: 10),
        ElevatedButton(
            onPressed: () {
              counterController.hasvalue(addValue);
            },
            child: Text("Add Value")),
        SizedBox(height: 10),
        ElevatedButton(
            onPressed: () {
              counterController.counterIncriment();
            },
            child: Text("Counter ++")),
        SizedBox(height: 10),
        ElevatedButton(
            onPressed: () {
              counterController.counterDicriment();
            },
            child: Text("Counter --")),
        TextButton(
            onPressed: onPressed,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(16.0),
              primary: Colors.white,
              backgroundColor: Colors.red,
              elevation: 9.0,
              textStyle: const TextStyle(
                fontSize: 20,
              ),
            ),
            child: child),
      ],
    );
  }
}
