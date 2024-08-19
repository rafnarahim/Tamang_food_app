import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(padding: EdgeInsets.fromLTRB(30, 50, 30, 0)),
            Center(
              child: Text(
                "DELIVERY TO",
                style: TextStyle(color: Colors.orange[300]),
              ),
            ),
            Row(
              children: [
                const SizedBox(width: 85),
                Text(
                  "Kannur,  kerala",
                  style: GoogleFonts.abel(fontSize: 25),
                ),
                const Icon(Icons.keyboard_arrow_down_outlined),
                const SizedBox(width: 55),
                const Text(
                  "Filter",
                  style: TextStyle(fontWeight: FontWeight.w500),
                )
              ],
            ),
            const SizedBox(height: 5),
            const Divider(),
            CarouselImage(),
            SizedBox(height: 15),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "Featured \nPartners",
                      style: GoogleFonts.anekDevanagari(
                          fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(width: 180),
                    Text(
                      "See all",
                      style: TextStyle(color: Colors.orange[300], fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class foods extends StatelessWidget {
  String foodImage;
  foods({super.key, required this.foodImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      height: 160,
      width: 180,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(foodImage, fit: BoxFit.cover)),
    );
  }
}

class CarouselImage extends StatelessWidget {
  final List<String> imgItems = [
    "assets/images/food 1.png",
    "assets/images/food 2.jpeg",
    "assets/images/food 3.jpeg",
    "assets/images/food 4.jpeg",
  ];

  CarouselImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: imgItems
          .map((item) => buildImageContainer(item, imgItems.indexOf(item)))
          .toList(),
      options: CarouselOptions(
          height: 200, // Adjust height as needed
          autoPlay: true,
          enlargeCenterPage: true,
          viewportFraction: 1),
    );
  }

  Widget buildImageContainer(String imagePath, int index) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class Texts extends StatelessWidget {
  const Texts({super.key, required this.Texts1, required this.Texts2});

  final String Texts1;
  final String Texts2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Texts1,
            style: GoogleFonts.abel(color: Colors.black87, fontSize: 20),
          ),
          Text(
            Texts2,
            style: const TextStyle(
                color: Colors.black54,
                fontSize: 15,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
