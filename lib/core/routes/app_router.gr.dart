// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:agarillc/ui/home/home.dart' as _i1;
import 'package:agarillc/ui/task1/taskone.dart' as _i2;
import 'package:auto_route/auto_route.dart' as _i3;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    Home.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.Home(),
      );
    },
    Tast1.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.Tast1(),
      );
    },
  };
}

/// generated route for
/// [_i1.Home]
class Home extends _i3.PageRouteInfo<void> {
  const Home({List<_i3.PageRouteInfo>? children})
      : super(
          Home.name,
          initialChildren: children,
        );

  static const String name = 'Home';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.Tast1]
class Tast1 extends _i3.PageRouteInfo<void> {
  const Tast1({List<_i3.PageRouteInfo>? children})
      : super(
          Tast1.name,
          initialChildren: children,
        );

  static const String name = 'Tast1';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
