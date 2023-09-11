import 'package:auto_route/auto_route.dart';
import 'package:car_rent_2_app/screens/MainScreen/main_screen.dart';

import '../screens/FavoriteScreen/view/favorite_screen.dart';
import '../screens/MapScreen/view/favorite_screen.dart';
import '../screens/ProfileScreen/view/profile_screen.dart';
import '../screens/SearchScreen/view/search_screen.dart';
import '../screens/SingleCarScreen/signle_car_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: MainRoute.page,
          path: "/",
          children: [
            AutoRoute(page: SearchRoute.page, path: "search"),
            AutoRoute(page: ProfileRoute.page, path: "profile"),
            AutoRoute(page: MapRoute.page, path: "map"),
            AutoRoute(page: FavoriteRoute.page, path: "favorite"),
          ],
        ),
        AutoRoute(page: CarRoute.page, path: "/car"),
      ];
}
