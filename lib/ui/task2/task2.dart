import 'dart:async';
import 'package:agarillc/ui/task2/task2_viewmodel.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Task2 extends StatefulWidget {
  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  Task2Viewmodel viewmodel = Task2Viewmodel();
  Stream<int>? myStream;
  late StreamController<int> streamController;

  _Task2State() {
    streamController = StreamController<int>();
    myStream = viewmodel.generateAsync_Stream();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Task 2",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
              "Demonstrate asynchronous generator with bloc including with transformers",
              style: TextStyle(fontSize: 16)),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            child: StreamBuilder<int>(
              stream: myStream,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  int value = snapshot.data ?? 0;

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Without Transformation',
                          style: TextStyle(fontSize: 21)),
                      Text('asynchronous generator Direct: $value'),
                      SizedBox(
                        height: 100,
                      ),
                      Text('With Transformation',
                          style: TextStyle(fontSize: 21)),
                      Container(
                        height: value.toDouble() * 5,
                        width: value.toDouble() * 5,
                        color: Colors.red,
                      )
                    ],
                  );
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  return Text('Waiting for data...');
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
