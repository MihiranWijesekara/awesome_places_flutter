import 'package:awesome_places/utils/colors.dart';
import 'package:awesome_places/widgets/resuable/land_marks/land_marks_card.dart';
import 'package:flutter/material.dart';

class LandMarks extends StatelessWidget {
  const LandMarks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Landmarks",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: mainLandMarksColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility of scenic landscapes, the allure of historical landmarks, or the excitement of vibrant cities, our curated collection of places to visit offers something for every traveler.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: mainTextColor,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const LandMarkCard(
                title: "Landmarks Place-1",
                description:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                imageURL:
                    "https://media.timeout.com/images/105625808/750/422/image.jpg",
              ),
              const SizedBox(
                height: 20,
              ),
              const LandMarkCard(
                title: "Landmarks Place-2",
                description:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                imageURL:
                    "https://media.timeout.com/images/105625808/750/422/image.jpg",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
