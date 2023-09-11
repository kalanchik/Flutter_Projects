import 'package:facebook_app/colors/palette.dart';
import 'package:facebook_app/models/user_model.dart';
import 'package:facebook_app/widgets/ProfileAvatar.dart';
import 'package:flutter/material.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUsers;
  const Rooms({super.key, required this.onlineUsers});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
        scrollDirection: Axis.horizontal,
        itemCount: onlineUsers.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: _CreateRoomBtn(),
            );
          }
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: ProfileAvatar(
              imageUrl: onlineUsers[index].imageUrl,
              isActivate: true,
            ),
          );
        },
      ),
    );
  }
}

class _CreateRoomBtn extends StatelessWidget {
  const _CreateRoomBtn();

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(Colors.white),
        side: MaterialStateProperty.all(
          const BorderSide(
            color: Colors.blueAccent,
            width: 3,
          ),
        ),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            color: Palette.facebookBlue,
          ),
        ),
      ),
      child: Row(
        children: [
          ShaderMask(
            shaderCallback: (bounds) =>
                Palette.createRoomGradient.createShader(bounds),
            child: const Icon(
              Icons.video_call,
              size: 35,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          const Text(
            "Create\nRoom",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
