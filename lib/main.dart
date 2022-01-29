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
  String? result;
  printfilecontent() async {
    String filecontent = await downloadfile();
    setState(() {});
    result = filecontent;
    print('file content is $filecontent');
    //return filecontent;
  }

  int count = 0;

  @override
  Widget build(BuildContext context) {
    print(result);
    return Scaffold(
      body: result == null ? Text('data') : Text(result!),

      // FutureBuilder(
      //   future: downloadfile(),
      //   builder: (context, snapshot) {
      //     if (snapshot.hasData) {
      //       return Text(snapshot.data.toString());
      //     } else
      //       return CircularProgressIndicator();
      //   },
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => printfilecontent(),
      ),
    );
  }
}

Future<String> downloadfile() {
  Future<String> result = Future.delayed(Duration(seconds: 10), () {
    return "I Am Learning Flutter";
  });
  return result;
}
