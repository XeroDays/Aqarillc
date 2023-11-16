//ignore_for_file: public_member_api_docs
import 'package:agarillc/core/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: Home.page, initial: true),
    AutoRoute(page: Tast1.page),
  ];
}
