import 'package:flutter/material.dart';

Car corvette = Car(
  companyName: "Chevrolet",
  carName: "Corvette",
  price: 2100,
  imageBack: "assets/corvette_back.png",
  imageFront: "assets/corvette_front.png",
  imageInterior: "assets/interior1.png",
  details: [
    CarOfferDetails(name: "bluetooth", icon: Icons.bluetooth),
    CarOfferDetails(name: "4 Сидения", icon: Icons.airline_seat_recline_normal),
    CarOfferDetails(name: "6.4Л", icon: Icons.pin_drop),
    CarOfferDetails(name: "5HP", icon: Icons.shutter_speed),
    CarOfferDetails(name: "Фиксированный Цвет", icon: Icons.invert_colors),
  ],
  spetifications: [
    CarSpecification(name: {"Пробег": "14.2 Км"}, icon: Icons.av_timer),
    CarSpecification(name: {"Двигатель": "3996 cc"}, icon: Icons.power),
    CarSpecification(name: {"Л.с": "700"}, icon: Icons.assignment_late),
  ],
  features: [
    CarFeatures(name: "bluetooth", icon: Icons.bluetooth),
    CarFeatures(name: "usb", icon: Icons.usb),
    CarFeatures(name: "Без Ключа", icon: Icons.power_settings_new),
    CarFeatures(name: "Android Auto", icon: Icons.android),
    CarFeatures(name: "AC", icon: Icons.ac_unit),
  ],
);

Car lamgo = Car(
  companyName: "Lamgorghini",
  carName: "Aventador",
  price: 3000,
  imageBack: "assets/lambo_back.png",
  imageFront: "assets/lambo_front.png",
  imageInterior: "assets/interior_lambo.png",
  details: [
    CarOfferDetails(name: "bluetooth", icon: Icons.bluetooth),
    CarOfferDetails(name: "2 Сидения", icon: Icons.airline_seat_recline_normal),
    CarOfferDetails(name: "6.4Л", icon: Icons.pin_drop),
    CarOfferDetails(name: "5HP", icon: Icons.shutter_speed),
    CarOfferDetails(name: "Фиксированный Цвет", icon: Icons.invert_colors),
  ],
  spetifications: [
    CarSpecification(name: {"Пробег": "14.2 Км"}, icon: Icons.av_timer),
    CarSpecification(name: {"Двигатель": "3996 cc"}, icon: Icons.power),
    CarSpecification(name: {"Л.с": "700"}, icon: Icons.assignment_late),
  ],
  features: [
    CarFeatures(name: "bluetooth", icon: Icons.bluetooth),
    CarFeatures(name: "usb", icon: Icons.usb),
    CarFeatures(name: "Без Ключа", icon: Icons.power_settings_new),
    CarFeatures(name: "Android Auto", icon: Icons.android),
    CarFeatures(name: "AC", icon: Icons.ac_unit),
  ],
);

List<Car> carsList = [
  corvette,
  lamgo,
];

class Car {
  final String companyName;
  final String carName;
  final int price;
  final String imageBack;
  final String imageFront;
  final String imageInterior;
  final List<CarOfferDetails> details;
  final List<CarSpecification> spetifications;
  final List<CarFeatures> features;

  Car({
    required this.companyName,
    required this.carName,
    required this.price,
    required this.imageBack,
    required this.imageFront,
    required this.imageInterior,
    required this.details,
    required this.spetifications,
    required this.features,
  });
}

class CarOfferDetails {
  final String name;
  final IconData icon;

  CarOfferDetails({
    required this.name,
    required this.icon,
  });
}

class CarSpecification {
  final Map<String, String> name;
  final IconData icon;

  CarSpecification({
    required this.name,
    required this.icon,
  });
}

class CarFeatures {
  final String name;
  final IconData icon;

  CarFeatures({
    required this.name,
    required this.icon,
  });
}
