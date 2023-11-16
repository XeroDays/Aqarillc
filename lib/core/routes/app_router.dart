//ignore_for_file: public_member_api_docs
import 'package:agarillc/core/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';

//here i am using auto_route package to generate routes for the application
// these routes can be categorized based on the application flow
// we use it to block any accendental access to the routes
// secure authontication based transitions based on user roles
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: Home.page, initial: true),
    AutoRoute(page: Tast1.page),
    AutoRoute(page: Task2.page),
    AutoRoute(page: Task3.page),
    AutoRoute(page: Task4.page),
    AutoRoute(page: Task5.page),
    AutoRoute(page: Task6.page),
  ];
}
