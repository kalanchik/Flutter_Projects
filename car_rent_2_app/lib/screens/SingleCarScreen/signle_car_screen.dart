import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CarScreen extends StatefulWidget {
  const CarScreen({super.key});

  @override
  State<CarScreen> createState() => _CarScreenState();
}

class _CarScreenState extends State<CarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const CustomAppBar(),
            const CarImage(),
            const CarName(),
            const CarPrice(),
            const SizedBox(height: 15),
            const CardInfo(),
            const SizedBox(height: 15),
            const CarInfo(),
            const SizedBox(height: 15),
            const PickUpPoint(),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      "Забронировать",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PickUpPoint extends StatelessWidget {
  const PickUpPoint({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Место сбора",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Container(
                height: 50,
                width: 150,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Откуда",
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Icon(Icons.swap_horiz),
              ),
              const SizedBox(width: 10),
              Container(
                height: 50,
                width: 150,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Куда",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CarInfo extends StatelessWidget {
  const CarInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Row(
            children: [
              CarInfoCard(
                icon: Icons.speed,
                subTitle: "230 км/ч",
                title: "Скорость",
              ),
              SizedBox(width: 10),
              CarInfoCard(
                icon: Icons.accessible,
                subTitle: "4",
                title: "Мест",
              ),
              SizedBox(width: 10),
              CarInfoCard(
                icon: Icons.rocket_launch,
                subTitle: "Автомат",
                title: "Коробка",
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              CarInfoCard(
                icon: Icons.directions_car,
                subTitle: "Седан",
                title: "Тип",
              ),
              SizedBox(
                width: 10,
              ),
              CarInfoCard(
                icon: Icons.food_bank,
                subTitle: "Дизель",
                title: "Бензин",
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CarInfoCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;
  const CarInfoCard({
    super.key,
    required this.icon,
    required this.subTitle,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Icon(
                icon,
                color: Colors.green.shade300,
              ),
              const SizedBox(width: 5),
              Text(
                subTitle,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CardInfo extends StatelessWidget {
  const CardInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.green.shade100,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Icon(
              Icons.bolt,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          const Flexible(
            child: Text(
              "Этот автомобиль в отличном состоянии, закрепите его, чтобы не потерять",
            ),
          )
        ],
      ),
    );
  }
}

class CarPrice extends StatelessWidget {
  const CarPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Civic 2009",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: "5000 руб",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(text: "/день", style: TextStyle(color: Colors.grey))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CarName extends StatelessWidget {
  const CarName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 15, bottom: 5),
      child: Row(
        children: [
          Text(
            "Honda",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}

class CarImage extends StatelessWidget {
  const CarImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ClipRRect(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: Image.asset(
              "assets/civic.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppBarButton(
            icon: Icons.arrow_back,
            onTap: () {
              AutoRouter.of(context).pop();
            },
          ),
          Container(
            child: Row(
              children: [
                AppBarButton(
                  icon: Icons.share,
                  onTap: () {},
                ),
                const SizedBox(width: 15),
                AppBarButton(
                  icon: Icons.favorite_outline,
                  onTap: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AppBarButton extends StatelessWidget {
  final IconData icon;
  final Function onTap;
  const AppBarButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Icon(icon),
      ),
    );
  }
}
