import 'package:flutter/material.dart';

String getCardNumber({required String cardNumber}) {
  List<String> cardNumberList = cardNumber.split(" ");
  return cardNumberList[3];
}

class ItemCard extends StatefulWidget {
  final String cardNumber;
  final String cardDate;
  final int balance;
  final int cardCvc;
  final String imagePath;
  final Color cardColor;
  const ItemCard({
    super.key,
    required this.cardNumber,
    required this.cardDate,
    required this.cardCvc,
    required this.balance,
    required this.imagePath,
    required this.cardColor,
  });

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  bool isHidden = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 200,
        decoration: BoxDecoration(
          color: widget.cardColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    child: Image.asset(
                      widget.imagePath,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    isHidden
                        ? widget.cardNumber
                        : "* * * * ${getCardNumber(cardNumber: widget.cardNumber)}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        isHidden ? "Срок ${widget.cardDate}" : "Срок * *",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        isHidden ? "CVC ${widget.cardCvc}" : "CVC  * * *",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "113 289 руб",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.2),
                                blurRadius: 10,
                                spreadRadius: 5,
                              )
                            ]),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isHidden = !isHidden;
                            });
                          },
                          child: const Text("Реквизиты"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
