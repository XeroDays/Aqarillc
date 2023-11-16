import 'package:agarillc/ui/custom_widgets/custom_button.dart';
import 'package:agarillc/ui/task5/task5_viewmodel.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@RoutePage()
class Task5 extends StatelessWidget {
  const Task5({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return Task5Viewmodel();
      },
      child: Consumer(builder: (context, Task5Viewmodel model, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Task 5"),
          ),
          body: model.isLoading
              ? Center(child: CircularProgressIndicator())
              : Center(
                  child: CustomButton("Call API that fails in 3 seconds", () {
                  model.callApi(context);
                })),
        );
      }),
    );
  }
}
