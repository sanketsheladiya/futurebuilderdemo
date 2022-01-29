import 'package:flutter/material.dart';

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
  int count = 0;

  Future<String> downloadfile() {
    Future<String> result = Future.delayed(Duration(seconds: 10), () {
      return "I Am Learning Flutter";
    });
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: downloadfile(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Text(snapshot.data.toString());
          } else
            return CircularProgressIndicator();
        },
      ),
    );
  }
}
