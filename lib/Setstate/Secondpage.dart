import 'package:flutter/material.dart';
import 'package:flutter_application_15/Setstate/home.dart';

class Secondpage extends StatefulWidget {
  final int counter;
  final String title;
  final ValueChanged<void> decrementCounter;
  final ValueChanged<void> incrementCounter;

  const Secondpage({
    Key? key,
    required this.counter,
    required this.title,
    required this.decrementCounter,
    required this.incrementCounter,
  }) : super(key: key);

  @override
  _SecondpageState createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  var onpressed;

  void_decrement() {
    widget.decrementCounter(null);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second page'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(widget.counter.toString()),
            SizedBox(
              height: 13,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyHomePage(
                                title: 'Home Page',
                                counter: widget.counter,
                                decrementCounter: widget.decrementCounter,
                                incrementCounter: widget.incrementCounter,
                              )));
                },
                child: Text('Back')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: void_decrement,
        tooltip: 'Decrement',
        child: Icon(Icons.exposure_minus_1),
      ),
    );
  }
}
