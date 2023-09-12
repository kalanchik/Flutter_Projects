// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ChatsRoute.name: (routeData) {
      final args = routeData.argsAs<ChatsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ChatsScreen(
          key: args.key,
          user: args.user,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
  };
}

/// generated route for
/// [ChatsScreen]
class ChatsRoute extends PageRouteInfo<ChatsRouteArgs> {
  ChatsRoute({
    Key? key,
    required User user,
    List<PageRouteInfo>? children,
  }) : super(
          ChatsRoute.name,
          args: ChatsRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatsRoute';

  static const PageInfo<ChatsRouteArgs> page = PageInfo<ChatsRouteArgs>(name);
}

class ChatsRouteArgs {
  const ChatsRouteArgs({
    this.key,
    required this.user,
  });

  final Key? key;

  final User user;

  @override
  String toString() {
    return 'ChatsRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
