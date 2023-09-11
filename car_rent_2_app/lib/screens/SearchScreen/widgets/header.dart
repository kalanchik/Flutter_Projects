import 'package:flutter/material.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Поиск автомобиля",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "Доступно больше чем 32 тысяч автомобилей",
                style: TextStyle(
                  color: Colors.grey.shade500,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
