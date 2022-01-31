import 'dart:async';

import 'package:flutter/material.dart';

import 'futurebuilder.dart';

void main() {
  runApp(MaterialApp(
    home: Myapp(),
  ));
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    print("dd");
    return Scaffold(
      body: Column(
        children: [
          FutureBuilder(
            builder: (context, snapshot) {
              if (snapshot.hasData)
                return Text(snapshot.data.toString());
              else
                return CircularProgressIndicator();
            },
            future: _calculateSquare(10),
          ),
          StreamBuilder(
            builder: (context, snapshot) {
              if (snapshot.hasData)
                return Text(snapshot.data.toString());
              else
                return CircularProgressIndicator();
            },
            stream: timevalue(), // Counter.counterstream,
          )
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => Counter.setdata = 6,
      // ),
    );
  }
}

Future<int> _calculateSquare(int num) async {
  await Future.delayed(const Duration(seconds: 5));
  return num * num;
}

Stream<int> _stopwatch() async* {
  int count = 0;
  while (true) {
    await Future.delayed(const Duration(seconds: 1));
    yield count++;
  }
}

Stream<int> _startimer() async* {
  int count = 0;
  while (true) {
    await Future.delayed(const Duration(seconds: 1));
    yield count++;
  }
}
