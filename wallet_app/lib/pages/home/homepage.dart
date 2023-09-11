import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'widgets/card_button.dart';
import 'widgets/my_card.dart';
import 'widgets/my_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // pagecontroller

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Column(
          children: [
            //  AppBar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: const Row(
                      children: [
                        Text(
                          "Мои",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 3),
                        Text(
                          "Карты",
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: const Icon(Icons.add),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),
            // Cards
            Container(
              height: 200,
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  MyCard(
                    paymeantName: "VISA",
                    balance: 6250,
                    cardNumber: 3245,
                    cardDate: "10/24",
                    cardColor: Colors.deepPurple[300],
                  ),
                  MyCard(
                    paymeantName: "VISA",
                    balance: 3100,
                    cardNumber: 8312,
                    cardDate: "15/26",
                    cardColor: Colors.blue[300],
                  ),
                  MyCard(
                    paymeantName: "МИР",
                    balance: 9870,
                    cardNumber: 1245,
                    cardDate: "12/31",
                    cardColor: Colors.deepOrange[300],
                  )
                ],
              ),
            ),
            const SizedBox(height: 15),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: Colors.blue.shade300),
            ),
            const SizedBox(height: 25),
            // 3 buttons -> send + pay + bills
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardButton(
                    icon: Image.asset("assets/icons/send-money.png"),
                    title: "Перевести",
                  ),
                  CardButton(
                    icon: Image.asset("assets/icons/credit-card.png"),
                    title: "Оплатить",
                  ),
                  CardButton(
                    icon: Image.asset("assets/icons/bill.png"),
                    title: "Платежи",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),
            // column -> stats + transaction
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  MyTile(
                    title: "Статистика",
                    subTitle: "Платежи и накопления",
                    iconPath: "assets/icons/analysis.png",
                  ),
                  MyTile(
                    title: "Переводы",
                    subTitle: "История переводов",
                    iconPath: "assets/icons/cash-flow.png",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "Главная",
          ),
          NavigationDestination(
            icon: Icon(Icons.qr_code_scanner),
            label: "Добавить карту",
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: "Настройки",
          ),
        ],
      ),
    );
  }
}
