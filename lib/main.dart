import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart';

void main() {
  runApp(MyApp());
  print("working peace");
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("RUN MUSIC"),
          ),
          body: Column(children: [
            ElevatedButton(
              child: Text("Return Values"),
              onPressed: () {
                userAccelerometerEvents.listen((UserAccelerometerEvent event) {
                  print(event);
                });
              },
            ),
            Text("data")
          ])),
    );
  }
}
