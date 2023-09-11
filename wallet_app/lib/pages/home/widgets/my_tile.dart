import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final String iconPath;
  const MyTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 200,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Image.asset(
          iconPath,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(subTitle),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
