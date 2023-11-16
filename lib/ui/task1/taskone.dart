import 'package:agarillc/core/contants/app_constants.dart';
import 'package:agarillc/core/models/ball_model.dart';
import 'package:agarillc/ui/custom_widgets/custom_button.dart';
import 'package:agarillc/ui/task1/taskone_viewmodel.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@RoutePage()
class Tast1 extends StatelessWidget {
  const Tast1({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return Task1Viewmodel();
      },
      child: Consumer(builder: (context, Task1Viewmodel viewmodel, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              "Task 1",
            ),
          ),
          body: Column(
            children: [
              Text("Demonstrating Builder Design Pattern",
                  style: TextStyle(fontSize: 20)),
              Container(
                color: Colors.grey.shade300,
                width: double.infinity,
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: viewmodel.size,
                      height: viewmodel.size,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: viewmodel.color,
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          viewmodel.number.toString(),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomButton("Change No", () {
                    viewmodel.changeNumber();
                  }),
                  CustomButton("Change Color", () {
                    viewmodel.changeColor();
                  }),
                  CustomButton("Change size", () {
                    viewmodel.changeSize();
                  }),
                ],
              ),
              CustomButton("Build Object", () {
                viewmodel.buildObject();
              }, width: 160),
              ListView.builder(
                shrinkWrap: true,
                itemCount: viewmodel.balls.length,
                itemBuilder: (context, index) {
                  BallModel ball = viewmodel.balls[index];
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    width: ball.size,
                    height: ball.size,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ball.color,
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        ball.number.toString(),
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        );
      }),
    );
  }
}
