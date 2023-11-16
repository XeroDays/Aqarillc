import 'package:agarillc/core/routes/app_router.gr.dart';
import 'package:agarillc/ui/custom_widgets/custom_button.dart';
import 'package:agarillc/ui/home/home_viewmodel.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HomeViewmodel viewmodel = HomeViewmodel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AGARI International LLC')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButton(
              "Task 1",
              () {
                viewmodel.task1_onClick(context);
              },
              width: 150,
            ),
            CustomButton(
              "Task 2",
              () {
                viewmodel.task2_onClick(context);
              },
              width: 150,
            ),
            CustomButton(
              "Task 3",
              () {
                viewmodel.task3_onClick(context);
              },
              width: 150,
            ),
            CustomButton(
              "Task 4",
              () {
                viewmodel.task4_onClick(context);
              },
              width: 150,
            )
          ],
        ),
      ),
    );
  }
}
