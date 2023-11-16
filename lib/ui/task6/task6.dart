import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Task6 extends StatelessWidget {
  const Task6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 6"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "This whole app routes are based on AutoRoute Navigation",
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          Text(
            "(Done)",
            style: TextStyle(fontSize: 20, color: Colors.green),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
