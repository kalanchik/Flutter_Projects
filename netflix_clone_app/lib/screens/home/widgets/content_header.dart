import 'package:flutter/material.dart';
import 'package:netflix_clone_app/models/content_model.dart';

import 'widgets.dart';

class ContentHeader extends StatelessWidget {
  final Content featuredContent;
  const ContentHeader({super.key, required this.featuredContent});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                featuredContent.imageUrl,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 500,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black,
                Colors.transparent,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        Positioned(
          bottom: 110,
          child: SizedBox(
            width: 250,
            child: Image.asset(featuredContent.titleImageUrl),
          ),
        ),
        Positioned(
          bottom: 40,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              VerticalIconButton(
                iconData: Icons.add,
                title: "List",
                onTap: () {},
              ),
              const _PlayButton(),
              VerticalIconButton(
                iconData: Icons.info_outline,
                title: "Info",
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _PlayButton extends StatelessWidget {
  const _PlayButton();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
      ),
      icon: const Icon(
        Icons.play_arrow,
        size: 30,
        color: Colors.black,
      ),
      label: const Text(
        "Play",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
