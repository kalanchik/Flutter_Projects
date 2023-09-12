import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../models/user_model.dart';
import '../screens/chats/view/chats_screen.dart';
import '../screens/home/view/home_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: "/"),
        AutoRoute(page: ChatsRoute.page, path: "/chat"),
      ];
}
