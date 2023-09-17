import 'package:flutter/material.dart';

class SelectorCategories extends StatefulWidget {
  const SelectorCategories({super.key});

  @override
  State<SelectorCategories> createState() => _SelectorCategoriesState();
}

class _SelectorCategoriesState extends State<SelectorCategories> {
  final List<String> categories = ["Messeges", "Online", "Groups", "Requests"];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.blue,
      ),
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 30),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final String category = categories[index];
          return GestureDetector(
            onTap: () {
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                category,
                style: TextStyle(
                  color: (1 == index) ? Colors.white : Colors.white60,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  letterSpacing: 1.2,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
