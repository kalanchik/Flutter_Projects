import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String paymeantName;
  final int balance;
  final int cardNumber;
  final String cardDate;
  final Color? cardColor;
  const MyCard({
    super.key,
    required this.paymeantName,
    required this.balance,
    required this.cardNumber,
    required this.cardDate,
    required this.cardColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.all(20),
      width: 300,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Баланс",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                paymeantName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Text(
            "$balance руб",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "**** $cardNumber",
                style: const TextStyle(color: Colors.white),
              ),
              Text(
                cardDate,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}
