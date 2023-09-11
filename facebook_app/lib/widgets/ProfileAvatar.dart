import 'package:facebook_app/colors/palette.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String imageUrl;
  final bool isActivate;
  final bool hasBorder;
  const ProfileAvatar({
    super.key,
    required this.imageUrl,
    this.isActivate = false,
    this.hasBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: Palette.facebookBlue,
          radius: 25,
          child: CircleAvatar(
            radius: hasBorder ? 22 : 25,
            backgroundImage: NetworkImage(imageUrl),
          ),
        ),
        isActivate
            ? Positioned(
                bottom: 0.0,
                right: 0.0,
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                      border: Border.all(color: Colors.white)),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
