import 'package:car_rent_app/models/car.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SingleCarScreen extends StatefulWidget {
  final Car car;
  const SingleCarScreen({
    super.key,
    required this.car,
  });

  @override
  State<SingleCarScreen> createState() => _SingleCarScreenState();
}

class _SingleCarScreenState extends State<SingleCarScreen> {
  bool isExpanded = false;
  int _currentImage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      backgroundColor: Colors.white30,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildHeader(),
            buildSlider(),
            buildIndicator(),
            const SizedBox(height: 15),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Комплектация",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            buildDetails(),
            const SizedBox(height: 15),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Особенности",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            buildFeatures(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 50,
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.phone_callback),
                    label: Text("Взять в аренду"),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  SizedBox buildFeatures() {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.only(left: 20),
            width: 200,
            child: Column(
              children: [
                Icon(
                  widget.car.features[index].icon,
                  color: Colors.white,
                ),
                const SizedBox(height: 5),
                Text(
                  widget.car.features[index].name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          );
        },
      ),
    );
  }

  SizedBox buildDetails() {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
              padding: EdgeInsets.only(left: 20),
              width: 200,
              child: Column(
                children: [
                  Icon(
                    widget.car.details[index].icon,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    widget.car.details[index].name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ));
        },
      ),
    );
  }

  Container buildIndicator() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 2,
            width: 50,
            decoration: BoxDecoration(
              color: _currentImage == 0 ? Colors.white : Colors.white54,
            ),
          ),
          Container(
            height: 2,
            width: 50,
            decoration: BoxDecoration(
              color: _currentImage == 1 ? Colors.white : Colors.white54,
            ),
          ),
          Container(
            height: 2,
            width: 50,
            decoration: BoxDecoration(
              color: _currentImage == 2 ? Colors.white : Colors.white54,
            ),
          ),
        ],
      ),
    );
  }

  Container buildSlider() {
    return Container(
      child: CarouselSlider(
        items: [
          Image(image: AssetImage(widget.car.imageFront)),
          Image(image: AssetImage(widget.car.imageBack)),
          Image(image: AssetImage(widget.car.imageInterior))
        ],
        options: CarouselOptions(
          height: 250,
          onPageChanged: (index, reason) {
            _currentImage = index;
            setState(() {});
          },
          viewportFraction: 1.0,
        ),
      ),
    );
  }

  Container buildHeader() {
    return Container(
      padding: const EdgeInsets.only(
        left: 15,
      ),
      child: Column(
        children: [
          RichText(
            text: TextSpan(
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: widget.car.companyName,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const TextSpan(text: "\n"),
                TextSpan(
                  text: widget.car.carName,
                  style: const TextStyle(
                    fontSize: 40,
                  ),
                ),
                const TextSpan(text: "\n"),
                TextSpan(
                  text: "\$${widget.car.price} / день",
                  style: const TextStyle(color: Colors.white54),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
