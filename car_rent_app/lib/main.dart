import 'package:car_rent_app/models/car.dart';
import 'package:car_rent_app/screens/single_car/single_car_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text(
            "Наши Авто",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            )
          ],
        ),
        backgroundColor: Colors.white30,
        body: Container(
          padding: const EdgeInsets.only(top: 16),
          height: 500,
          child: ListView.builder(
            itemCount: carsList.length,
            itemBuilder: (context, index) {
              return ListTile(
                contentPadding: const EdgeInsets.only(
                  bottom: 15,
                  right: 10,
                  left: 10,
                ),
                leading: CircleAvatar(
                  radius: 34,
                  backgroundImage: AssetImage(carsList[index].imageFront),
                ),
                title: Text(
                  "${carsList[index].companyName} ${carsList[index].carName}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "\$${carsList[index].price}/день",
                  style: const TextStyle(
                    color: Colors.white70,
                  ),
                ),
                trailing: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => SingleCarScreen(
                          car: carsList[index],
                        ),
                      ),
                    );
                  },
                  child: const Text("Посмотреть"),
                ),
              );
            },
          ),
        ));
  }
}
