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
  String status;

  @override
  void initState() {
    super.initState();
    status = "None";
  }

  @override
  Widget build(BuildContext context) {
    //double flag = 0;
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
                  print(status);
                  //flag = event.y;
                  if ((event.y) * (event.y) > 1.5) {
                    status = "MOVING";
                  } else {
                    status = "NOT MOVING";
                  }

                  setState(() {});
                });
              },
            ),
            Text(
              status,
              style: TextStyle(fontSize: 30),
            )
          ])),
    );
  }
}
