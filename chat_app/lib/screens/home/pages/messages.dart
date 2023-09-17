import 'package:flutter/material.dart';

import '../widgets/favorite.dart';
import '../widgets/last_chats.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Favorite(),
        SizedBox(
          height: 20,
        ),
        LastChats(),
      ],
    );
  }
}
