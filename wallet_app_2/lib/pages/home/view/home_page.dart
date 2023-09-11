import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/bils_item.dart';
import '../widgets/item_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 15),
                      border: InputBorder.none,
                      hintText: "Операции",
                      hintStyle: TextStyle(),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black.withOpacity(0.4),
                      )),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 190,
                    height: 50,
                    child: Center(
                      child: ListTile(
                        onTap: () {},
                        title: const Text(
                          "Дмитрий",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Iconsax.notification,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              height: 200,
              child: PageView(
                controller: _controller,
                children: const [
                  ItemCard(
                    cardNumber: "1223 3445 5667 7889",
                    cardDate: "12/23",
                    cardCvc: 328,
                    balance: 113289,
                    imagePath: "assets/icons/visa.png",
                    cardColor: Color(0xFF313131),
                  ),
                  ItemCard(
                    cardNumber: "1223 3445 5667 7889",
                    cardDate: "9/32",
                    cardCvc: 456,
                    balance: 26789,
                    imagePath: "assets/icons/visa.png",
                    cardColor: Color(0xFF345AFA),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SmoothPageIndicator(
              controller: _controller,
              count: 2,
              effect: const ExpandingDotsEffect(
                dotWidth: 12,
                dotHeight: 12,
              ),
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        "Оплата счетов",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      BilsItem(
                        title: "ЖКХ",
                        icon: Icons.factory,
                      ),
                      BilsItem(
                        title: "Интернет",
                        icon: Icons.wifi_tethering,
                      ),
                      BilsItem(
                        title: "ТВ",
                        icon: Icons.tv,
                      ),
                      BilsItem(
                        title: "Мобильная связь",
                        icon: Icons.mobile_screen_share,
                      ),
                      BilsItem(
                        title: "Учеба",
                        icon: Icons.school,
                      ),
                      BilsItem(
                        title: "Отдых",
                        icon: Icons.airplane_ticket,
                      ),
                      BilsItem(
                        title: "Транспорт",
                        icon: Icons.bus_alert,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ListTile(
                    onTap: () {},
                    leading: Container(
                      width: 70,
                      height: 80,
                      decoration: BoxDecoration(),
                      child: Image.asset(
                        "assets/icons/analysis.png",
                        height: 50,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward),
                    title: const Text(
                      "Статистика",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    subtitle: Text("Платежи и накопления"),
                  ),
                ),
                const SizedBox(height: 20),
                const NewCardButton(),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 0, right: 0, bottom: 0),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Главная",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Поиск",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wallet),
              label: "Платежи",
            ),
          ],
        ),
      ),
    );
  }
}

class NewCardButton extends StatelessWidget {
  const NewCardButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xFF345AFA),
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Center(
              child: Text(
            "Выпустить новую карту",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
      ),
    );
  }
}
