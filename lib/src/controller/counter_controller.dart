import 'package:get/get.dart';

import '../../flutter_package.dart';

class CounterController extends GetxController {
  final AddedValue addedValue = AddedValue();
  RxInt counter = 0.obs;
  RxInt hasValue = 0.obs;

  counterIncriment() {
    counter.value++;
    addedValue.addData(counter);
    print("Hi" + addedValue.hereValue.toString());
    print(addedValue.hereValue.toString());
  }

  counterDicriment() {
    counter.value--;
  }

  hasvalue(value) {
    hasValue.value = value;
  }
}
