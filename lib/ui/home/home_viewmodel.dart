import 'package:auto_route/auto_route.dart';

import '../../core/routes/app_router.gr.dart';

class HomeViewmodel {
  void task1(context) {
    // presenting builder pattern
    AutoRouter.of(context).push(Tast1());
  }
}
