import 'package:flutter/material.dart';
import 'package:flutter_application_15/Setstate/home.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    // counter = counter ?? 0;
  }

  void incrementcounter() {
    counter++;

    setState(() {});
  }

  void decrementcounter() {
    counter--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(
        counter: counter,
        title: 'First Page',
        incrementCounter: (void value) {
          incrementcounter();
        },
        decrementCounter: (void value) {
          decrementcounter();
        },
      ),
    );
  }
}
