import 'package:auto_route/auto_route.dart';

import '../../core/routes/app_router.gr.dart';

class HomeViewmodel {
  void task1_onClick(context) {
    // presenting builder pattern
    AutoRouter.of(context).push(Tast1());
  }

  void task2_onClick(context) {
    // presenting builder pattern
    AutoRouter.of(context).push(Task2());
  }

  void task3_onClick(context) {
    // presenting builder pattern
    AutoRouter.of(context).push(Task3());
  }

  void task4_onClick(context) {
    // presenting builder pattern
    AutoRouter.of(context).push(Task4());
  }
}
