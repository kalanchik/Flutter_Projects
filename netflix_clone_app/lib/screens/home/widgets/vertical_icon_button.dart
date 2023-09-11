import 'package:flutter/material.dart';

class VerticalIconButton extends StatelessWidget {
  final IconData iconData;
  final String title;
  final void Function() onTap;
  const VerticalIconButton({
    super.key,
    required this.iconData,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Icon(
            iconData,
            color: Colors.white,
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
