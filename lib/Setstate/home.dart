import 'package:flutter/material.dart';
import 'package:flutter_application_15/Setstate/Secondpage.dart';

class MyHomePage extends StatefulWidget {
  final int counter;
  final String title;
  final ValueChanged<void> incrementCounter;
  final ValueChanged<void> decrementCounter;

  const MyHomePage({
    Key? key,
    required this.counter,
    required this.title,
    required this.incrementCounter,
    required this.decrementCounter,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void onpressed() {
    widget.incrementCounter(null);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State  Management'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(widget.counter.toString()),
            SizedBox(
              height: 12,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Secondpage(
                                title: 'Second Page',
                                counter: widget.counter,
                                decrementCounter: widget.decrementCounter,
                                incrementCounter: widget.incrementCounter,
                              )));
                },
                child: Text('Next')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        child: Icon(Icons.add),
        onPressed: onpressed,
      ),
    );
  }
}
