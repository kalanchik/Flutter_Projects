import 'package:auto_route/auto_route.dart';
import 'package:car_rent_2_app/router/router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        SearchRoute(),
        MapRoute(),
        FavoriteRoute(),
        ProfileRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(child: child),
          bottomNavigationBar: NavigationBar(
            indicatorColor: const Color.fromARGB(255, 201, 227, 156),
            onDestinationSelected: (value) {
              setState(() {
                tabsRouter.setActiveIndex(value);
              });
            },
            selectedIndex: tabsRouter.activeIndex,
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home_outlined),
                label: "",
              ),
              NavigationDestination(
                icon: Icon(Icons.car_crash),
                label: "",
              ),
              NavigationDestination(
                icon: Icon(Icons.favorite_outline),
                label: "",
              ),
              NavigationDestination(
                icon: Icon(Icons.person_outline),
                label: "",
              ),
            ],
          ),
        );
      },
    );
  }
}
