import 'dart:async';

import 'package:flutter/widgets.dart';

class Counter {
  static StreamController controller = StreamController();
  static Stream get counterstream => controller.stream;
  static Sink get countersink => controller.sink;

  static set setdata(int data) {
    countersink.add(data);
  }
}

void timer() {
  int count = 0;
  // Timer.periodic(Duration(seconds: 1), (timer) {
  //   print(count++);
  // });

 
}

Stream<int> timevalue() async* {
  yield* Stream.periodic(Duration(seconds: 1), (int a) {
    return a++;
  });
}
