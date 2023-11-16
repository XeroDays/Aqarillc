// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:agarillc/ui/home/home.dart' as _i1;
import 'package:agarillc/ui/task1/taskone.dart' as _i5;
import 'package:agarillc/ui/task2/task2.dart' as _i2;
import 'package:agarillc/ui/task3/task3.dart' as _i3;
import 'package:agarillc/ui/task4/task4.dart' as _i4;
import 'package:auto_route/auto_route.dart' as _i6;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    Home.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.Home(),
      );
    },
    Task2.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.Task2(),
      );
    },
    Task3.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.Task3(),
      );
    },
    Task4.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.Task4(),
      );
    },
    Tast1.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.Tast1(),
      );
    },
  };
}

/// generated route for
/// [_i1.Home]
class Home extends _i6.PageRouteInfo<void> {
  const Home({List<_i6.PageRouteInfo>? children})
      : super(
          Home.name,
          initialChildren: children,
        );

  static const String name = 'Home';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.Task2]
class Task2 extends _i6.PageRouteInfo<void> {
  const Task2({List<_i6.PageRouteInfo>? children})
      : super(
          Task2.name,
          initialChildren: children,
        );

  static const String name = 'Task2';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.Task3]
class Task3 extends _i6.PageRouteInfo<void> {
  const Task3({List<_i6.PageRouteInfo>? children})
      : super(
          Task3.name,
          initialChildren: children,
        );

  static const String name = 'Task3';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.Task4]
class Task4 extends _i6.PageRouteInfo<void> {
  const Task4({List<_i6.PageRouteInfo>? children})
      : super(
          Task4.name,
          initialChildren: children,
        );

  static const String name = 'Task4';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.Tast1]
class Tast1 extends _i6.PageRouteInfo<void> {
  const Tast1({List<_i6.PageRouteInfo>? children})
      : super(
          Tast1.name,
          initialChildren: children,
        );

  static const String name = 'Tast1';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
