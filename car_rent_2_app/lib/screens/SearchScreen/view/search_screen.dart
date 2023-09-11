import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../widgets/CardOffer.dart';
import '../widgets/CustomAppBar.dart';
import '../widgets/Search.dart';
import '../widgets/header.dart';

@RoutePage()
class SearchScreen extends StatelessWidget {
  const SearchScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBar(),
          SizedBox(height: 15),
          MainHeader(),
          SizedBox(height: 15),
          Search(),
          SizedBox(height: 25),
          CardOffer()
        ],
      ),
    );
  }
}
